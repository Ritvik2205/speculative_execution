.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdi]
cmovnbe bx, di
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rsi]
imul cl
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
sbb rbx, 60
xor cl, 60
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], cx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
