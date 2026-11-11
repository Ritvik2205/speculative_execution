.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], bx
xor al, dil
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
setns cl
xchg sil, bl
lea bx, qword ptr [rsi]
sub sil, -18
inc edx
xor cl, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 4
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
