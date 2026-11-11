.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp bx, ax
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
test cl, 62
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 12
test bl, -14
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
cmovnp rsi, rbx
jmp .bb_0.1
.bb_0.1:
cmovno rax, rdx
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
test cl, -113
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], dx
xor al, dl
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 3
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 47
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
cmovnz rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
