.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 55
sub al, dl
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
cmp sil, dil
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 60
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 90
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
cmovp cx, cx
sbb dx, 80
cmovle bx, ax
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], dx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
