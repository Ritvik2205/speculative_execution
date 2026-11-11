.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb si, si
and al, -56
and sil, -94
and rbx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
or rsi, 71
or edi, 8
and cl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and cx, bx
jmp .bb_0.1
.bb_0.1:
and al, -56 # instrumentation
cmovl rdi, rdx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
xor eax, 73
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
test cl, al
and rdi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdi]
cmovs ecx, eax
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
cmovno di, ax
cmovs eax, ecx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
