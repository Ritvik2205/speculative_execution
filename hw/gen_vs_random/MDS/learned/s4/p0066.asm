.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -23697
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and al, al
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
btr esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
