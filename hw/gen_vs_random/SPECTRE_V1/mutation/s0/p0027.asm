.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 121 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
dec cl
setnbe al
cmovno di, dx
imul edi, esi, -3
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub ax, 124
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
cmovnb esi, ebx
setp bl
neg ax
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
cmp dl, 71
sbb si, bx
add dl, 20 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 15
setbe cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
