.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb bx, cx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
xchg eax, edx
sbb al, bl
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and al, 126
xor al, al
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ebx
and al, -26 # instrumentation
cmovnp rsi, rax
and dl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
cmovnl esi, eax
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 94
and dx, 61
xor rsi, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
