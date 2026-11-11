.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 100
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
bt rsi, rbx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 42
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
and sil, -115 # instrumentation
cmovl bx, si
bts rax, rsi
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 37
and al, -105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
cmovns edi, eax
jmp .bb_0.1
.bb_0.1:
or cl, 10
xor edx, 59
xor dil, sil
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 11
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
bts ebx, 71
cmovbe ax, di
and bl, 122 # instrumentation
cmovnb rbx, rax
bts bx, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
