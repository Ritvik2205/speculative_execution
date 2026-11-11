.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ax
imul al
add bl, 39 # instrumentation
cmovo eax, ecx
and rdi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 18
cmovp cx, si
cmovz edi, ecx
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rbx], di
add bl, -76 # instrumentation
cmovnle cx, dx
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
xor bx, 47
imul rdi
add al, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
