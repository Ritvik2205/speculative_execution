.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg rsi
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -73
lea rdx, qword ptr [rdi + rbx]
cmovp rsi, rax
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
sub dx, 9
xchg dx, si
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
sub al, 28
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 51
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
add cl, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
add sil, -58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
neg cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
