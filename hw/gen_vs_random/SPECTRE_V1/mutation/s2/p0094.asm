.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
setno al
cmovl rsi, rcx
add cl, 56 # instrumentation
cmovns edi, ecx
setns dl
movsx rdi, cx
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
or dl, cl
test edx, ebx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 6791
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -25
add dl, 83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
test ecx, -1134698714
xor cl, 114
cmovnbe si, bx
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
