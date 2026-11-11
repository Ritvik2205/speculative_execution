.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
cmovb edi, edi
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
cmp cx, dx
and dil, 66
sbb ax, 67
jmp .bb_0.1
.bb_0.1:
add al, 50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
and cl, -109 # instrumentation
cmovns rbx, rbx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
sub di, 10
add dl, 31 # instrumentation
cmovnl bx, bx
lea esi, qword ptr [rcx]
dec bl
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
mov rsi, 42
cmovnz rax, rbx
xchg dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
