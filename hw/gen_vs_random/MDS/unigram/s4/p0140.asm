.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rsi, rsi
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
btr ecx, 65
and cl, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
btc rdi, rdi
cmovnp cx, dx
test rdx, 15
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
bt ax, bx
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 63
and al, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
cmovbe rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
