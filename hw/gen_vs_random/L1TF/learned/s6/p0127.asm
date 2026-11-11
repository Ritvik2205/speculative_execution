.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rcx, 74
sub sil, -99
test cx, 50
adc dil, 120
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
cmovnp cx, si
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
setno bl
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
