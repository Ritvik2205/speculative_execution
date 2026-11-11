.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
and al, -54
and sil, 89
test al, 91
and ax, bx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
or al, -22
or al, 16
or al, sil
jmp .bb_0.1
.bb_0.1:
and si, -121
xor al, 9
xor dil, cl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
