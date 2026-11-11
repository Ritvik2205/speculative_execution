.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rbx]
or sil, dil
cmovno rdi, rcx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
xor cl, al
xor sil, dl
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
not rcx
and al, al
cmovnp rdi, rbx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rcx
and dl, 97 # instrumentation
cmovnp ax, di
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -33
cmovnbe rdi, rcx
test rcx, -613256812
cmovle rax, rax
or esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
