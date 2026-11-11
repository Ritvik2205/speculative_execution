.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 32
xchg dil, al
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rsi]
lea rdx, qword ptr [rdx + rbx]
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
add bl, 27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
btc bx, dx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 45
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
or dil, cl
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
