.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
cmovl cx, ax
cmovnp rdi, rax
cmovnl rbx, rsi
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
bts ebx, esi
btc ax, 72
and cl, -76 # instrumentation
cmovl dx, ax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rdi]
and dl, 34 # instrumentation
cmovno edx, edi
test rax, rsi
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and sil, al
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
xor dl, 8
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
or sil, sil
xor ebx, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
