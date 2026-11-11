.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul al
add bl, 39 # instrumentation
cmovo eax, ecx
inc ax
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rbx], di
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 75
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
add al, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
xor bx, 47
imul rdi
add bl, -76 # instrumentation
cmovnle cx, dx
add al, -65
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rbx
cmovp cx, si
cmovz edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
