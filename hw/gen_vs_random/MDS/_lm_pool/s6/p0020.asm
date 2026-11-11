.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 40
or al, -61
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
xor bl, dil
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
test al, 91
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
test sil, al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
or sil, cl
xor al, 99
test cl, sil
test eax, -675944960
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
