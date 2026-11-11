.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 26
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
btc dx, 38
cmovl ecx, ecx
bts edx, ecx
cmovnl rax, rax
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ebx
and edi, 50
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rax]
test sil, al
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
cmovnle esi, ebx
btc cx, 104
test edx, 82
cmovnbe si, bx
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
