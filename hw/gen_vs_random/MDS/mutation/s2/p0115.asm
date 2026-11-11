.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
xor cl, 122
test ecx, 1044879383
btr eax, ecx
and ax, -30938
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
and dl, -33 # instrumentation
cmovns rdi, rdi
bts edi, ecx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and bl, -26 # instrumentation
cmovnp rax, rbx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
bt edx, eax
not dl
cmovnp rbx, rax
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
