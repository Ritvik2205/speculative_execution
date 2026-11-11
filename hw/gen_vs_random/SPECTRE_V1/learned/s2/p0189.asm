.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
add rax, 1503210561
or bl, cl
adc bl, bl
movsx rsi, dil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
add bl, 126 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi]
cmovnbe rcx, rcx
adc eax, 54
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
cmovl esi, eax
or ax, 12618
mul dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
