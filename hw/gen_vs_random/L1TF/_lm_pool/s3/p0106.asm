.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
adc dil, 120
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -73
jmp .bb_0.2
.bb_0.2:
sub sil, -99
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
jmp .bb_0.5
.bb_0.5:
setle bl
cmovz rdx, rax
xor ax, 27703
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
