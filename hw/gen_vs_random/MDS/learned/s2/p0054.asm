.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
xor al, dil
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and dl, dil
test dil, 46
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test cl, dl
and al, sil
bts rcx, rdx
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
btr edx, edi
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
