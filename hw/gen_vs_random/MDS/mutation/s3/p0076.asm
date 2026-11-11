.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and dl, -33 # instrumentation
cmovns rdi, rdi
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
bts edi, ecx
xor cl, 93
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and ax, -22368
not dl
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and bl, -26 # instrumentation
cmovnp rax, rbx
bt edx, eax
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
btr eax, ecx
cmovnp rbx, rax
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
test ecx, 1044879383
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
