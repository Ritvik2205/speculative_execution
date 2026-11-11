.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 0b1000000000000000 # instrumentation
bsr ax, cx
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and sil, cl
and dl, -1 # instrumentation
cmovnb di, dx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 48
btr rcx, 2
and cl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
bts cx, 51
and bl, -66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and cl, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 86
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 96
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 62
test al, bl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
