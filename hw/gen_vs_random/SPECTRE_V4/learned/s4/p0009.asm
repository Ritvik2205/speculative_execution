.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -84
sbb dil, 34
or al, -90
and rcx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rcx]
mov bl, dl
add ax, 17333
test dil, 64
dec cl
cmp dil, bl
xchg edx, ecx
adc ebx, -55
add al, -55
and ax, -4731
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
