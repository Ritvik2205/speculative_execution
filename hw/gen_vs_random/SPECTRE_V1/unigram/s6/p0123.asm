.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 95 # instrumentation
cmovnb rcx, rdi
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
imul al
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rsi]
lea esi, qword ptr [rdi + rdi + 88]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 75
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdx], cx
lea rcx, qword ptr [rcx + rbx]
cmp dl, sil
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
xchg cl, al
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
