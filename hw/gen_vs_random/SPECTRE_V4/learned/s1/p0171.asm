.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
and eax, -2040347881
sbb dil, 66
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
test eax, 1340292467
cmp cl, -80
or bl, -99
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
add dl, -8
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
test esi, -2111618709
xor dil, sil
cmp rdx, -49
mov cl, al
sbb bl, al
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
add al, -29
mov bl, al
or al, 27
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
