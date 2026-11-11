.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr eax, ecx
and bl, -26 # instrumentation
cmovnp rax, rbx
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
xor cl, -79
cmovnp rbx, rax
and dl, -33 # instrumentation
cmovns rdi, rdi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
test ecx, 1044879383
and ax, 15401
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
bts edi, ecx
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
not dl
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
bt edx, eax
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
