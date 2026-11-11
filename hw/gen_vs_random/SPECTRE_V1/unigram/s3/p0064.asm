.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, sil
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
add dl, -11 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
test dil, -116
not dl
bts dx, cx
neg esi
lea rax, qword ptr [rbx + rcx + 48]
or dil, bl
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 13
and rcx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
adc al, sil
and rax, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rax]
cmovb bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
