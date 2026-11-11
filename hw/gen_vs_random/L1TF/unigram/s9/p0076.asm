.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
lea cx, qword ptr [rax + rbx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 13
and rdi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdi]
nop
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
add bl, dil
imul sil
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
cmovnl rsi, rdi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rax]
imul dl
movzx edx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
