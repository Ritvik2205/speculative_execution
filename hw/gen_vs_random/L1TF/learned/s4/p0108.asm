.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and bl, bl
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
cmp al, -119
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
neg rbx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
