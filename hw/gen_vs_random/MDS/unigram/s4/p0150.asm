.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and cl, 112 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
test bl, -114
and cl, sil
and sil, 84 # instrumentation
cmovbe si, bx
cmovl ax, si
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rax], ax
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
cmovns di, dx
test dil, 46
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rax
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
or al, bl
and dl, 97 # instrumentation
cmovnp ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
