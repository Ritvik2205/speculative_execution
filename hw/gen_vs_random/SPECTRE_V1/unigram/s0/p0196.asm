.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], cx
cmovnl rdi, rbx
inc rax
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
cmovz rdi, rsi
add cl, 72 # instrumentation
cmovnl bx, dx
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
movzx eax, cl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 47
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
mul dl
xchg bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
xor al, al
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
