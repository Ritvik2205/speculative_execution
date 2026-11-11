.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
lea rsi, qword ptr [rdx + rcx]
lea rax, qword ptr [rax + rdx]
cmovnle ecx, eax
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
cmovnbe si, bx
jmp .bb_0.1
.bb_0.1:
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
jmp .bb_0.2
.bb_0.2:
neg edx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
cmovp edi, ebx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ebx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
cmovnbe ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
