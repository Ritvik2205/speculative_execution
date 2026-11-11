.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 32
sub ax, si
sbb dil, dl
adc dl, -12
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xchg ebx, ecx
xchg ecx, esi
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
adc al, 70
adc dil, 120
jmp .bb_0.2
.bb_0.2:
sub cl, sil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
