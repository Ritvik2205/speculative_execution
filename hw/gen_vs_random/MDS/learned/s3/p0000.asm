.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 24
and al, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or dl, dil
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
bts rsi, rdi
jmp .bb_0.1
.bb_0.1:
xor al, -26
and cl, dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and al, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and cl, dl
xor dl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
