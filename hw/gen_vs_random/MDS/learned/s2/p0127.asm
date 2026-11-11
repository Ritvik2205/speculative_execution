.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
cmovnle ecx, esi
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
cmovnb bx, bx
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
add bl, 110 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
xor rbx, rdx
jmp .bb_0.1
.bb_0.1:
xor cl, al
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
or dl, 22
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and cl, -81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
bts eax, edi
or ax, 28091
xor cl, dl
and rax, -1909598591
and dl, 84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
cmovo dx, si
or dl, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
