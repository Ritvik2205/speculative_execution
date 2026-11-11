.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdx, rcx
test esi, 425331143
and cl, 49 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
test ecx, -1843375753
and bl, -120 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
or rdx, -109
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 19
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
btr rbx, 155
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
or cx, di
cmovle rbx, rsi
test cl, -18
not eax
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and dl, -1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
or dx, 0b1000000000000000 # instrumentation
bsr di, dx
bt dx, ax
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rsi], dx
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
