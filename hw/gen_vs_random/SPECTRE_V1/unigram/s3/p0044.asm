.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
add cl, 73 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
adc al, al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or cl, 97
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
adc bl, 27
add cl, -83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
add cl, -109 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 54
and rdi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rdi]
cwde
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
