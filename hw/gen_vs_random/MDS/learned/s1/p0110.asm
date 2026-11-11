.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
test ax, 18697
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
xor dl, 8
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
xor ax, -5889
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 11
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
jmp .bb_0.2
.bb_0.2:
test al, dl
and dil, 125
and al, -8
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
