.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc eax, ebx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
test bx, 25542
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
test dx, 16353
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
xor dl, -19
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
and bl, -74 # instrumentation
cmovns esi, edx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], bx
and bl, 61 # instrumentation
cmovl cx, bx
cmovle ecx, ebx
btc esi, edi
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], si
and cx, -8
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
