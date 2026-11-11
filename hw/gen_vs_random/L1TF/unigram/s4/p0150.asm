.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], eax
cmovle rdx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
or dil, -113
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
or rbx, rdi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
adc cl, al
and rsi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rsi]
btc dx, bx
cmovnbe ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
