.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 32
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
or sil, cl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dil, bl
and rbx, 13
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
xchg al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
