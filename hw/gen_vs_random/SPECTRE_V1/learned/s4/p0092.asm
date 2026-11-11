.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and al, 33
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
sub bl, -19
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 36
sub al, bl
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
or al, cl
xor al, al
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
