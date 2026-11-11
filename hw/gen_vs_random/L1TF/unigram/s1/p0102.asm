.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns ecx, edx
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx], 42
sub dl, al
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 80
lea edx, qword ptr [rax]
add cl, 44 # instrumentation
cmovns di, dx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], -37
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
sbb ax, di
add al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
