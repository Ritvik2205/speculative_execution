.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], si
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rbx
cmovbe eax, edx
lea cx, qword ptr [rbx + rbx + 69]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -90
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -34
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
adc rbx, 13
seto dl
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
