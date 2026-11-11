.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 56 # instrumentation
cmovns edi, ecx
or dl, cl
setns dl
cmovl rsi, rcx
test edx, ebx
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
movsx rdi, cx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
and bl, al
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
btr dx, bx
and bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
