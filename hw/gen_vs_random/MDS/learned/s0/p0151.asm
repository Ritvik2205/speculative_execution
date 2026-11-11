.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, dx
xor cl, 98
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
test dil, -80
xor dl, al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 49
bt dx, cx
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
or cl, cl
xor bl, -27
xor sil, 94
and rdx, 44
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
