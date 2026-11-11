.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns edi, ecx
xor sil, 110
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
cmovp di, si
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
btc si, ax
xor cl, bl
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
xor dl, -59
cmovns di, dx
and bl, 120 # instrumentation
cmovnle edi, edi
btr si, cx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], -12
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
cmovnbe ebx, ebx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
