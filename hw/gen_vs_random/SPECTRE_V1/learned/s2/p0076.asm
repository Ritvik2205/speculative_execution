.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
dec bl
setnb sil
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
or al, sil
sbb rcx, 32
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
adc al, -92
sub dil, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
