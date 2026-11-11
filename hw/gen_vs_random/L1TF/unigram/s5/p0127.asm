.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edx, ecx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
not edx
xchg ecx, eax
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 76
sbb esi, ecx
xor cx, 113
add al, -60 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
