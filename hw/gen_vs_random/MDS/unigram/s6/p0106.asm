.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
not sil
cmovle dx, cx
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
test ax, cx
and ax, di
and rcx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rcx]
cmovl di, dx
test cl, dil
and rdx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and al, 84
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
cmovs ebx, esi
cmovl ebx, esi
cmovns eax, edx
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
cmovz esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
