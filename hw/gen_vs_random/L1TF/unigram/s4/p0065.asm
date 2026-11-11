.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
xor dil, dl
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
cmp edx, esi
sbb dil, 41
btr ebx, 42
add ebx, esi
sbb cx, 19
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
btc rcx, rdx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 30
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
