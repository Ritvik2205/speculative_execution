.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rcx]
imul rax, rdi, 92
lea si, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
dec ax
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 96
xor dl, 19
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and edi, 21
sbb cl, cl
add sil, bl
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
