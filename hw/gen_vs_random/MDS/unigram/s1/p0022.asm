.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rdi, 129
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
not rbx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
xor bx, 70
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
xor cl, 15
btc eax, 40
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
and ebx, 61
and sil, al
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
not dil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
