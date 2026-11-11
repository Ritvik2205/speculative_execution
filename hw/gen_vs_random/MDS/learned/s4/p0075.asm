.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -23364
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
or cl, 39
test al, 91
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
xor bl, dil
and al, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
test dl, 9
test bl, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
xor al, 34
test dil, al
xor dil, -5
cmovle rsi, rax
and dil, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
