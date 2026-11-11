.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul al
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
add bl, 39 # instrumentation
cmovo eax, ecx
and rdi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdi]
inc ax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 75
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
add al, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rbx
imul rdi
cmovz edi, ecx
add al, 10
add bl, -76 # instrumentation
cmovnle cx, dx
xor bx, 47
cmovp cx, si
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
