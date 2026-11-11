.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdi, 28
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 13
or cl, 10
and dl, -7
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 57
cmovs rcx, rsi
cmovnb rax, rax
and bl, dil
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and bl, 79
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 11
cmovle rdi, rcx
and dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
and dil, al
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
xor dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
