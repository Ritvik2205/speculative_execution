.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdx]
xor al, sil
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
bts ebx, edi
and al, -68
and rax, 1163013815
xor cl, dil
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
