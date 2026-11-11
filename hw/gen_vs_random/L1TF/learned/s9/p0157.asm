.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
and dl, 32
cmp bl, dil
xor cl, dl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
xor cl, dl
and dl, -86
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
test bl, 12
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
