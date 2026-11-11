.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 15401
bts rdx, 255
and dl, 60 # instrumentation
cmovno ebx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
and di, 34
bt rbx, 69
cmovnp rdi, rbx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
cmovnz ebx, ecx
and cl, 95 # instrumentation
cmovns rdi, rdi
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and dx, ax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and bl, -104 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
xor cl, bl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 57
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and dil, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
