.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rbx
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
and al, 73
test eax, 758789512
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 15
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 17
cmovnl si, ax
and cx, 21
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 34
and rdx, 34
and dl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
bt edi, 254
cmovnle rdi, rax
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 71
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
cmovns rbx, rdx
xor dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
