.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
lea esi, qword ptr [rsi]
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
cmp bl, cl
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
cmp cl, 81
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
lea di, qword ptr [rdi]
imul eax, eax, 11
inc sil
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
