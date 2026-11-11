.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 9
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
or bl, al
and dl, dl
or cl, dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xor bl, -61
xor sil, 110
or bx, 90
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
xor dl, -19
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
btr rax, 209
test al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
