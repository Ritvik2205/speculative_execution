.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
xor dl, -59
cmovns di, dx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], -12
btc si, ax
cmovp di, si
cmovnbe ebx, ebx
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
xor sil, -15
xor cl, bl
and bl, 120 # instrumentation
cmovnle edi, edi
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
btr si, cx
cmovns edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
