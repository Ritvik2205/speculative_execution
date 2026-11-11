.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
bts dx, bx
cmovle dx, di
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
lea rdx, qword ptr [rdx + rsi]
cmovz ecx, eax
lea ecx, qword ptr [rcx + rax]
add dil, 72
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
not rbx
btr edi, edx
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
sbb dil, al
mov cl, bl
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
