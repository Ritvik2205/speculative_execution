.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, -127
xor bl, bl
cmovno edi, eax
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 55
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
lea edx, qword ptr [rdi + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
movsx ax, bl
bt bx, 27
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sub rbx, -128
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
test rdx, 21
lea ax, qword ptr [rbx]
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
cmp al, 19
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
