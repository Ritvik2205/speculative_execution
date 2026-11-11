.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi]
btr cx, dx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
and bl, 68
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -33
cmovl esi, esi
xor cl, -13
and bx, cx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdi]
or bl, -62
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rax
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 74
cmovno rbx, rsi
and dl, bl
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rbx], ax
and dl, -26 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
