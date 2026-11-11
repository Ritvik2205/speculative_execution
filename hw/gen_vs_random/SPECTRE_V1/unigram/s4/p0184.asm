.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
adc di, 66
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
lea bx, qword ptr [rcx + rcx + 42]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
not rdx
js .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -24
sbb sil, al
xor eax, ecx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
test al, 48
cmp esi, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
