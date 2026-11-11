.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 55
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
and dx, 29
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rbx + rdi + 7]
xor dl, al
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
xor cl, sil
xor cl, dl
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
