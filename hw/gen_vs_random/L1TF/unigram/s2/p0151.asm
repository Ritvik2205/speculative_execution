.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 17
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
xchg eax, esi
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
test rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 49
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
xor cl, 89
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
cmp dil, dil
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
