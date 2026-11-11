.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 125
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
test bl, 65
and cl, 9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
cmovnp ax, cx
xor dil, al
and bl, -56 # instrumentation
cmovnle ebx, ecx
btc rdi, 221
btr dx, 47
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
bt rbx, 241
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
xor bl, -27
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
not ebx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
cmovnz dx, dx
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
