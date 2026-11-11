.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
bt ax, 205
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
sbb cl, -11
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi], 61
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rsi + rdx]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], dx
and rdx, rbx
lea rbx, qword ptr [rbx + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
