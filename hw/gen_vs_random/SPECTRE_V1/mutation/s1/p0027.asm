.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rsi, rcx
setns dl
movsx rdi, cx
add cl, 56 # instrumentation
cmovns edi, ecx
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
setno al
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
test edx, ebx
or dl, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
xor cl, 114
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 6791
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -25
cmovnbe si, bx
and bl, al
test ecx, -1134698714
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
