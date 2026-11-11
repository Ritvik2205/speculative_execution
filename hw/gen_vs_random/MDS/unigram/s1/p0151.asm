.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -18
cmovl bx, cx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 90
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], esi
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
and al, 70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
and bl, 121 # instrumentation
bt rbx, 59
cmovbe edi, esi
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
btc rax, rbx
bt bx, di
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
and al, al
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
xor dil, 124
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
