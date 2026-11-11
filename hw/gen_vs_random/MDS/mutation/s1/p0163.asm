.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
test ecx, 1044879383
bt edx, eax
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
btr eax, ecx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
bts edi, ecx
cmovnp rbx, rax
xor cl, 93
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and bl, -26 # instrumentation
cmovnp rax, rbx
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and dl, -33 # instrumentation
cmovns rdi, rdi
not dl
and ax, 28417
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
