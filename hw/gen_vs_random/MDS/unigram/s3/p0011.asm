.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -44 # instrumentation
cmovno rbx, rax
cmovle rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and dl, 16 # instrumentation
cmovle eax, eax
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
or ax, -6817
and bl, -120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
xor si, di
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
and al, 39 # instrumentation
cmovbe cx, bx
and cl, -49 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
bts eax, 222
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
cmovns dx, bx
test al, -81
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
test si, 48
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
