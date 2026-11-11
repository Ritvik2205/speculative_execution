.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rbx], bx
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
and dx, 60
test dx, 16353
cmovz edx, eax
btr edi, 221
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
btc ecx, 34
cmovl esi, ecx
cmovbe si, bx
cmovnp rsi, rbx
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rsi], bx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
cmovnp ax, dx
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
