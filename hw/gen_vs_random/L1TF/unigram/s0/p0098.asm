.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx bx, dl
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], bx
lea ecx, qword ptr [rsi + rsi + 94]
xchg ecx, esi
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
cmp cx, di
neg rdi
and rdi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdi]
add al, -9 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -83
lea rsi, qword ptr [rsi + rax]
add al, 56
lea si, qword ptr [rcx + rdx + 65]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
mov rax, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
