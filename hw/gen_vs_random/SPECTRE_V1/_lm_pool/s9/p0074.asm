.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
or esi, ecx
cmp al, cl
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
or rdx, 92
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
sub sil, dil
and dl, cl
and rbx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rbx]
sbb bl, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
