.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, 96
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 116
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
xchg si, di
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 29
xor ax, 2053
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
xor cx, si
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 41
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and cl, 102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], bx
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
