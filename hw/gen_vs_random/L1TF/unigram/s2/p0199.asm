.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rdi
add dl, -117 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
lea dx, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
add bl, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
xchg cx, si
xchg dil, bl
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 56
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rax
adc al, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
