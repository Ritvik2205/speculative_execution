.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
cmovb esi, edi
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rsi
test cx, 12
and al, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rsi
and rdx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
or dl, al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
bt di, cx
bts rdx, 255
and dl, -73 # instrumentation
cmovns rcx, rdx
and dil, 29
not si
cmovp ax, ax
or al, al
or bx, dx
xor al, -28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
