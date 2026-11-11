.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 104 # instrumentation
mov ebx, 69
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 82
cmp dil, bl
test dil, -126
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
and rax, -109
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
