.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, 4954
test dil, dil
xor bl, -102
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
and dl, -26 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
and cl, 79
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rdx
xor cl, bl
xor cl, 24
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
bt dx, si
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdx]
and bl, -123 # instrumentation
cmovnp ax, cx
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
