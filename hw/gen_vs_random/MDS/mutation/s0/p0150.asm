.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns di, dx
btc si, ax
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
xor sil, -14
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
btr si, cx
cmovnbe ebx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
xor cl, bl
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
cmovns edi, ecx
cmovp di, si
xor dl, -43
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and bl, 120 # instrumentation
cmovnle edi, edi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
