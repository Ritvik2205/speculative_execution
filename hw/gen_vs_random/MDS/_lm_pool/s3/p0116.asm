.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ecx
or al, 24
cmovle ax, di
jmp .bb_0.1
.bb_0.1:
or dil, bl
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
xor rsi, -117
btc rcx, 75
test al, 91
test dil, dl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], si
xor al, dil
or al, sil
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
