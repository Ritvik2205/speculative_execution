.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
test bl, -92
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
or ecx, 10
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -90
sbb cl, bl
and esi, 19
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rbx
jmp .bb_0.3
.bb_0.3:
and sil, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
