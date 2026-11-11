.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -19
bt esi, 3
xor cl, bl
or dil, bl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
xor dil, 8
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
cmovp eax, ebx
xor edx, -13
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
bt esi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
cmovno rsi, rsi
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
xor cx, -18
test dl, 27
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
