.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
cmovnb rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
btr dx, dx
and al, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
bt ecx, edi
or dl, -97
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
or dl, cl
bt eax, 28
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
or bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -46
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
