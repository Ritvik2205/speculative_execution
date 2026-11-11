.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
and cl, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
cmovs ax, dx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
add dl, sil
xor al, 78
or rax, 1749358813
setz al
or cl, 10
and cl, -81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdi]
or rax, -285849275
cmovnl esi, edi
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
cmovz ecx, ebx
add cl, -82 # instrumentation
sbb si, ax
and al, 93
cmovo si, dx
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
cmp ax, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
