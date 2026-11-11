.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 97
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
sbb bl, dl
add di, 44
mov bl, al
cmp dil, bl
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 31
sbb ecx, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
