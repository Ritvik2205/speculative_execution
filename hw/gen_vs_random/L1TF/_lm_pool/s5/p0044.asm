.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -92
and di, 77
cmp al, sil
test dil, -126
jmp .bb_0.1
.bb_0.1:
bt edi, ecx
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
jmp .bb_0.2
.bb_0.2:
or al, cl
sub dil, -70
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
