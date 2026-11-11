.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 97
and rax, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], al
movsx eax, cx
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rdx]
or ax, -18131
movsx eax, al
jmp .bb_0.1
.bb_0.1:
cmovl rdi, rsi
btr cx, di
cmovnp ax, cx
mov eax, 27
and rcx, 56
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
