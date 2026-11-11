.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rax]
xor edx, 2
xor rbx, -51
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 73
xor rdx, rcx
cmovb bx, cx
cmovnl eax, ebx
bt rsi, rax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
jmp .bb_0.1
.bb_0.1:
xor dl, -125
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
bts edi, ebx
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
xor di, ax
and al, bl
cmovo ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
