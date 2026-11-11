.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rbx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
cmovnle edx, esi
cmovl di, cx
and rdx, 98
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and dl, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
bt ax, cx
cmovnb ax, di
jmp .bb_0.1
.bb_0.1:
test bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rsi]
xor rdi, -9
or cl, dl
bts di, 73
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
xor eax, ecx
or bl, -125
xor al, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
