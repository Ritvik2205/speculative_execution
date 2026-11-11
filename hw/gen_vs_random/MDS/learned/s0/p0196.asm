.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -10351
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
xor sil, dil
jmp .bb_0.1
.bb_0.1:
or al, dil
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test al, bl
xor rax, -91
or sil, -49
xor ax, 23633
xor dl, -59
xor eax, 571592471
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
