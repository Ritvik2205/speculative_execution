.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 53
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
sub dil, -111
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 69
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
lea di, qword ptr [rsi + rbx + 53]
lea cx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 31
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
setl dil
cmp dx, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
