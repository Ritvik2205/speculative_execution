.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 53
setb al
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
sub dx, -23
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
adc rdx, 84
test sil, 97
test si, di
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and al, dl
add cl, 112 # instrumentation
movzx edx, cl
movsx ebx, bx
add dl, -47 # instrumentation
sbb bl, 19
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
