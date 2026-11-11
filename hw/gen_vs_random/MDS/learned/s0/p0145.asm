.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
xor dil, -5
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 100
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or sil, dil
xor al, cl
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
or al, dil
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
or rax, -1523798580
xor sil, 94
or sil, bl
xor rdi, -9
test rax, -708244380
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
