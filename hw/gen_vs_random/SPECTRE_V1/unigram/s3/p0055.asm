.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rax], edi
btr rdx, rax
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], bx
cmovnbe esi, ecx
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 58
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
or al, cl
add cl, -96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rdi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
