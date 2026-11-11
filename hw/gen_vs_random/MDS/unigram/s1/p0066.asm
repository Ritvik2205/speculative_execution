.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
or bx, 81
btc dx, cx
cmovb rsi, rax
cmovbe eax, esi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
or cl, dil
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -27
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 45
and dl, -73
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and dl, -116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
bts rcx, 58
and rdi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 16
cmovb cx, cx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
