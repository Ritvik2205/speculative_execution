.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe dil
dec al
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
setno sil
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
lea dx, qword ptr [rdx]
and cl, cl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 36
dec eax
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
or al, bl
lea rdi, qword ptr [rdi + rsi]
bt bx, ax
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
test cl, 69
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
