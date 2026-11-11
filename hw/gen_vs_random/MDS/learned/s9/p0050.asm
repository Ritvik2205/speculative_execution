.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
jmp .bb_0.1
.bb_0.1:
test dil, -51
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 11
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
test dl, cl
and esi, 71
xor ax, -6793
test al, dl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
