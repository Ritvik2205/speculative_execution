.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
test ecx, 1044879383
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
not dl
and dl, -33 # instrumentation
cmovns rdi, rdi
bts edi, ecx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
btr eax, ecx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
and bl, -26 # instrumentation
cmovnp rax, rbx
and ax, -30938
cmovnp rbx, rax
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
bt edx, eax
xor cl, 93
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
