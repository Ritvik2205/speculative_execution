.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
cmovnz di, cx
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
not rcx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
cmovo edi, ebx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], bl
add bl, -52 # instrumentation
not edx
setb dil
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rax]
xor eax, -885407671
cmovbe rsi, rax
add ax, 32140
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
