.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
cmovle si, ax
and di, 99
test cl, al
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
or al, dil
or sil, -78
bt si, bx
test dil, -80
test al, dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
bt si, di
test al, sil
xor dl, bl
bt dx, si
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
xor al, 115
and rax, -636362975
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
