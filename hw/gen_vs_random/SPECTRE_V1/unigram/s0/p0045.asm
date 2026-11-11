.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 27
imul al
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rax]
or eax, -1641258390
test rdi, -1846965753
and rax, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rax]
imul rsi, rbx, 11
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
mov si, 84
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 75
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], bl
cmp rsi, 53
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
