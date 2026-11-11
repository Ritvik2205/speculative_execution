.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, -110
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
or al, 16
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and al, -86 # instrumentation
cmovns dx, cx
test cl, bl
btc rbx, 118
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
not ebx
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
cmovnp rbx, rdi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
xor dil, -5
cmovnbe cx, di
and ax, 29207
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
