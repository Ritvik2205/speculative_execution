.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -40 # instrumentation
sbb rdx, 13
test rdi, rdx
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
cmp cx, 13
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
neg edx
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
imul rcx
jmp .bb_0.1
.bb_0.1:
add bl, 93 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 93
and bl, al
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 36
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
sbb rcx, 4
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
