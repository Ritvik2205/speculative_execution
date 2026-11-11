.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add al, 74
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
jl .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
jmp .bb_0.4
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], esi
bts ax, 201
xor ax, 32760
lea rdi, qword ptr [rcx]
or ax, -10161
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
