.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
lea ecx, qword ptr [rbx + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 98
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
imul rbx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
setnl sil
add bl, 126 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
lea rdi, qword ptr [rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], cx
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 26
lea ecx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 87
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 85
xchg cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
