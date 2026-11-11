.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 11
setno al
cmp cl, dl
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
inc cl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
adc ax, -614
add dil, dl
btc ax, dx
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], sil
sbb eax, 1332762061
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
