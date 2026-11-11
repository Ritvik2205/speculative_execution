.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 74
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 54
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 30
add sil, -68
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
adc bx, 36
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
xchg eax, ecx
cmp rbx, rdx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
adc dl, bl
and cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
