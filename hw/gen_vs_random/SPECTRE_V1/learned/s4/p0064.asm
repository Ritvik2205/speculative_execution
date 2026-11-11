.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
add dil, 72
btc eax, 11
and dl, -111
sub dil, -32
and rcx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rcx]
sbb edx, -8
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
