.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, si
or sil, cl
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
test dl, -81
sub dil, -40
dec cl
sbb bl, -75
or cl, al
xor ax, -17712
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
add dl, cl
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
sub bl, -98
or bl, dil
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
