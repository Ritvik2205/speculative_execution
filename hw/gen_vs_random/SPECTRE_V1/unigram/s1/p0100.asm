.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dx
btr cx, 25
add cl, -56 # instrumentation
sbb rbx, 19
imul al
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
test edi, 14
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdx], bx
add bl, -118 # instrumentation
cmovp di, di
sub dil, cl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
sub sil, -18
mov al, dl
sbb cl, sil
add cl, -42 # instrumentation
lea cx, qword ptr [rsi + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
