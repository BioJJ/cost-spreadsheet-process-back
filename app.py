from flask import Flask, request, jsonify
import pandas as pd
import numpy as np
from flask_cors import CORS

app = Flask(__name__)
CORS(app, resources={r"/*": {"origins": "*"}})

@app.route('/test',methods=['GET'])
def test():
    return jsonify("acesso livre")


@app.route('/processar-planilha', methods=['POST'])
def processar_planilha():
    try:
        file = request.files['file']

        df = pd.read_excel(file)

        result = []
        for index, row in df.iterrows():
            create_cost_dto = {
                # -1 se não houver ID ou for NaN
                'id': int(row.get('ID', -1) if not pd.isna(row.get('ID', -1)) else -1),
                'description': row['Descrição da transação'],
                'transactionDate': row['Data da transação'],
                'transactionType': row['Tipo de Transação'],
                'value': float(row['Valor']),  # Converta o valor para float
                'recipient': row.get('Destinatário ou Beneficiário', '')
            }
            result.append(create_cost_dto)

        return jsonify(result)

    except Exception as e:
        return jsonify({'error': str(e)}), 500


if __name__ == '__main__':
    app.run(port=5000, host='localhost', debug=True)
