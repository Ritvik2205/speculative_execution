.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr esi, eax
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], -80
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
xchg al, bl
bswap rdi
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
jmp .bb_0.1
.bb_0.1:
cmovl rsi, rbx
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 23
sbb esi, 25
cmovbe edx, ecx
not rax
sub rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rcx]
sub rsi, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
