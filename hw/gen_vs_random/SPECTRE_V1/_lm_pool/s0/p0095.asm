.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 12 # instrumentation
cmovnb eax, edi
sbb cl, 105
sbb ecx, 35
or al, dil
test dl, 113
and sil, 111
sub sil, -18
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
sub bl, cl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 69
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
