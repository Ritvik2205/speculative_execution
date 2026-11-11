.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
add rax, 1633593912
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
or sil, -44
or al, cl
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rcx + rsi + 81]
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
lea cx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
