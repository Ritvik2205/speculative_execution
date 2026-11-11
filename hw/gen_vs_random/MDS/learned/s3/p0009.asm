.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 51
and al, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
test bl, cl
or ax, -7150
xor cl, bl
xor rcx, -2
xor sil, dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
