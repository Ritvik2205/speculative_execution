.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, bl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -109
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], dx
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
cmovnb rdx, rax
cmovp dx, ax
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rsi
bt edx, 69
test dil, -67
and al, 12 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ecx
btc edi, 36
test sil, sil
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
test rcx, 86
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
bts ecx, ebx
btc si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
