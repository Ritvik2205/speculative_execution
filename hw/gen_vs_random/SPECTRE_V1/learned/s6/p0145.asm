.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], ax
add dil, bl
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
sbb ebx, 49
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, bl
xor cl, dil
or ax, -114
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
test sil, -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
