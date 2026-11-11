.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
btc bx, 58
xor rcx, -2
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
or cl, al
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor dx, 48
or sil, -49
xor dl, cl
and al, cl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
