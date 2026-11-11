.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
sbb al, dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 5
mov cl, dil
and al, bl
and al, -68
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
xor dil, -42
cmp al, cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
