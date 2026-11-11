.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, eax
sbb al, -50
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
sub sil, -99
test al, -82
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
adc dx, 3
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
test ax, 13879
xor al, bl
sbb sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
