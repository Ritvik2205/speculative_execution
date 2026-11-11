.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and edx, 27
sub dil, -40
sub bl, -98
or dl, -26
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
or dil, 5
test al, 115
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdx]
add cl, dil
sbb dil, 92
sub dl, -16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
