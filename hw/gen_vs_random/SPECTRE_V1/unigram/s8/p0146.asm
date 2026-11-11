.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rcx, 74
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
movzx ebx, dx
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 84
sub cl, bl
add cl, -127
cmovnp si, si
cmovnb rdi, rsi
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
btc cx, si
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
add sil, 2
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
