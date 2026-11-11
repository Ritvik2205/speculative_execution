.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 50
sbb bl, bl
movzx si, dil
test rdx, 1657596343
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
xor edi, 115
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
inc dil
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
xchg cx, di
nop
xchg rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
