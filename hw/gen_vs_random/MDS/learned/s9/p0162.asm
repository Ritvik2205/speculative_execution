.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
xor dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test dil, -80
or si, 94
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
not cl
and rax, 41
btr dx, si
jmp .bb_0.2
.bb_0.2:
and esi, 95
test sil, -55
test ebx, -961564216
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
