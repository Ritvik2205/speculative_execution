.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
cmp dl, bl
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
test al, cl
and rbx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rbx
xor dil, sil
xor al, al
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
imul rbx
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
