.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, sil
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 41
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
xor dil, 72
and dl, -18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdi]
btr rdi, rdi
xor bx, 79
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
and al, al
cmovl rax, rdx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and cx, 36
test bx, 27
and rsi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rsi]
xor cx, ax
cmovnz ax, dx
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
bts rcx, 115
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
