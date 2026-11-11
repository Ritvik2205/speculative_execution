.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, dil
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
bts rcx, 115
and dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
xor rbx, -51
xor bl, al
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 27
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
cmovp eax, ecx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
btr rax, 97
or bx, di
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 93
not cl
and rax, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rax]
bt eax, eax
cmovns cx, ax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
