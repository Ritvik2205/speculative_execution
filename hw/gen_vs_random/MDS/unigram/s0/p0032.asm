.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], dx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and bl, -6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
btc rcx, rax
and rcx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rcx]
bts eax, 222
cmovl eax, edx
bt ax, cx
and dl, 93 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdi], ax
cmovnbe rbx, rbx
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
or dl, al
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
cmovnb rdi, rdi
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
