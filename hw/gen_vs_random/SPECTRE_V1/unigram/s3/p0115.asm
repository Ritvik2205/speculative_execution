.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg dl
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
and rdx, -98
lea rbx, qword ptr [rcx + rax]
lea cx, qword ptr [rcx + rsi + 36]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rax
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
test cl, cl
xor si, 14
add bl, -12 # instrumentation
lea rdi, qword ptr [rax + rdx]
add cl, -95 # instrumentation
lea cx, qword ptr [rbx + rbx + 19]
add dl, 105 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
