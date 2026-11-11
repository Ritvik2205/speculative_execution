.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
lea ebx, qword ptr [rax + rax + 48]
cmovnp bx, ax
and dil, -22
inc edi
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 84
add dl, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
cmovnz ebx, eax
or cx, 74
setl cl
or bl, bl
sbb si, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
