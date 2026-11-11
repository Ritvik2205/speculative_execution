.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ebx
or al, -22
btr di, cx
test cl, 73
xor rax, 459999114
or al, 37
and bl, 68
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
test bl, dl
and dl, -73
xor si, 91
xor rax, -1499464454
or cl, 119
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
