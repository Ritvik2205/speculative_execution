.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], eax
cmovl si, cx
test ebx, -961564216
or sil, al
bt rdx, rax
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and cl, 112 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
cmovns bx, dx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], ax
or dil, al
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
cmovl rdx, rbx
cmovnbe cx, si
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
cmovnb eax, edx
and dl, 60 # instrumentation
cmovnl edx, ebx
cmovb rdx, rcx
cmovnb cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
