.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bl, al
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], di
cmovp ax, ax
lea rax, qword ptr [rbx + rbx + 94]
add bl, 52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
imul dl
mov edx, edi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], ax
movsx eax, dl
sbb sil, dil
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
cmovnbe rax, rdx
add bl, 104 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
