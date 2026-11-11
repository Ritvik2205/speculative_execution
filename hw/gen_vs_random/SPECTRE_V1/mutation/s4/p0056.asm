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
setno al
movsx rdi, cx
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, 83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
and bl, al
xor cl, -103
cmovnbe si, bx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -25
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 6791
test ecx, 729805876
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdx
inc dl
or dl, cl
lea bx, qword ptr [rcx + rbx]
movsx dx, sil
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], -42
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], dx
mov cl, cl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], -117
lea ax, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
