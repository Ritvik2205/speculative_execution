.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 51
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
add dl, 43 # instrumentation
lea rcx, qword ptr [rsi + rax]
sub sil, 45
cmovnp ecx, ebx
xchg cl, bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
adc bl, bl
and rdi, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
neg rsi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
lea rbx, qword ptr [rbx + rdi + 3362]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
