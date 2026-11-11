.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setns dl
test edx, ebx
movsx rdi, cx
or dl, cl
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
cmovl rsi, rcx
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
setno al
add cl, 56 # instrumentation
cmovns edi, ecx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, -103
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -25
and bl, al
cmovnbe si, bx
add dl, 83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
test ecx, 729805876
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 6791
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
