.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
xor sil, -15
test al, 66
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
or dil, sil
test sil, cl
and bl, al
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
test ebx, -961564216
xor al, dl
jmp .bb_0.1
.bb_0.1:
test al, bl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
and al, 14
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
btr rcx, 10
xor dl, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
