.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt bx, 53
dec ax
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
btr eax, edi
lea rbx, qword ptr [rbx + rax]
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
test ax, ax
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -62
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
cmovns rbx, rbx
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 20
and sil, 37
btc rdx, rax
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rsi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
