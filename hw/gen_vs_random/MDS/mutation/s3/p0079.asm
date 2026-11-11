.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
btr eax, ecx
xor cl, -79
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
cmovnp rbx, rax
test ecx, 1044879383
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and bl, -26 # instrumentation
cmovnp rax, rbx
bt edx, eax
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
not dl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and ax, 30884
bts edi, ecx
and dl, -33 # instrumentation
cmovns rdi, rdi
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
