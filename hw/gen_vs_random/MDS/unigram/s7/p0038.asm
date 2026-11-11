.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, 21
not rax
or ebx, esi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
bts ecx, 3
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
cmovnp ebx, esi
test rdx, 41
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovns edi, ecx
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rsi], cx
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
cmovs si, bx
cmovns bx, si
cmovl ebx, ebx
and rax, rax
btr bx, di
xor sil, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
