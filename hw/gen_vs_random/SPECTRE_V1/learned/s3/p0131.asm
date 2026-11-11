.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
lea di, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
bts ax, 88
and cl, cl
cmp cl, bl
cmp dl, bl
dec dil
test al, 59
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
