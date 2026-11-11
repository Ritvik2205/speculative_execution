.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
cmovns edi, ecx
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
btc si, ax
cmovnbe ebx, ebx
xor dl, 40
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
xor sil, -15
cmovns di, dx
cmovp di, si
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
xor cl, bl
btr si, cx
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], -12
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and bl, 120 # instrumentation
cmovnle edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
