.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and dl, -78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and cl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
or rdx, rax
xor bl, cl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
or dil, -57
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and bx, dx
or edx, 77
or al, -8
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
cmovo cx, si
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
xor dl, -68
cmovp rsi, rcx
or rbx, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
