.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 65
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -30
test edx, 16
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 18
setns bl
lea ecx, qword ptr [rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], eax
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], bx
test cl, -62
cmp cl, 44
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 43
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
