.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], esi
add bl, -107 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
cmp eax, edi
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 71
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rax]
neg rcx
js .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 97 # instrumentation
adc di, si
test dil, 18
add bl, 63
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rdx
add bl, -41 # instrumentation
xchg sil, bl
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
xchg si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
