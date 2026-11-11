.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 8
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
xchg rbx, rdx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 41
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
test cl, -24
sub dil, dl
sbb sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
