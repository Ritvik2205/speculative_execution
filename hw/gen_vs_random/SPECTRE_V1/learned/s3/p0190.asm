.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
adc dil, 30
sub dil, -32
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
add cl, sil
cmp al, 77
sub dl, bl
or ax, 19104
sub esi, 80
and al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
