.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -97
bts rbx, rdi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
test bx, 4954
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
cmovl rsi, rdx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rbx
test cl, cl
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
cmovnbe ebx, ebx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
btr si, cx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
and bl, 120 # instrumentation
cmovnle edi, edi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
cmovns edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
