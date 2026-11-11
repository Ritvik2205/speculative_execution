.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
btr rdx, rdx
bts bx, 22
bt dx, cx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
cmovnl rdx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and bl, -115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 90
cmovo dx, dx
bts rax, 117
and dil, dl
and si, 100
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and cl, 122 # instrumentation
cmovnbe ecx, edx
and dl, 84 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
