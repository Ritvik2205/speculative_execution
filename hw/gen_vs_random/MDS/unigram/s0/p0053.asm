.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe edx, ecx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ecx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and bx, si
and bl, -55 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 97
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 21
and dil, -38 # instrumentation
cmovp rdi, rsi
cmovbe ax, ax
or al, bl
bt ax, si
bt di, 53
cmovo rsi, rcx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 73
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
