.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
bt edx, eax
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
btr eax, ecx
and dl, -33 # instrumentation
cmovns rdi, rdi
bts edi, ecx
and bl, -26 # instrumentation
cmovnp rax, rbx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
cmovnp rbx, rax
test ecx, 1044879383
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
xor cl, 122
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and ax, 15401
not dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
bts cx, di
and al, 4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax
and dl, 84 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
