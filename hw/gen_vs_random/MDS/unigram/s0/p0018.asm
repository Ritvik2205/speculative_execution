.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
bt esi, 3
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 76
and eax, edi
and ax, ax
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
cmovnp rcx, rbx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
btc si, bx
and bl, cl
and si, -121
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
xor rcx, rdi
or cx, 49
or bl, dl
not si
not dil
cmovno rdi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
