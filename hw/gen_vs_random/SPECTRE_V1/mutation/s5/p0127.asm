.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul edi, esi, -3
add dl, 121 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
cmovno di, dx
setnbe al
dec cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
setp bl
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
add dl, 20 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 15
neg ax
sub ax, -15315
cmp dl, 71
sbb si, bx
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
cmovnb esi, ebx
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
setbe cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
