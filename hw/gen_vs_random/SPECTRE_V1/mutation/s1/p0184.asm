.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnbe al
add dl, 121 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
imul edi, esi, -3
cmovno di, dx
dec cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
setp bl
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
sub ax, 124
sbb si, bx
neg ax
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
add dl, 20 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 15
setbe cl
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
cmp dl, -115
cmovnb esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
