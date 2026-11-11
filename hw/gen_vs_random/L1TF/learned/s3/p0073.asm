.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test dl, 84
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and al, bl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
xor al, cl
jmp .bb_0.3
.bb_0.3:
sub cl, al
cmp al, dil
sbb dl, -26
sub bl, cl
and dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
