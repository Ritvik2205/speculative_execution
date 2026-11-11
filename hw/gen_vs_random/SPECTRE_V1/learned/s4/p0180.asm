.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
or sil, bl
test al, 34
cmp cl, dil
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
xor dil, bl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub rbx, -11
jmp .bb_0.2
.bb_0.2:
lea rbx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
