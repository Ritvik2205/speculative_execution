.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 24
xor dl, -43
xor ax, 23633
bts rdi, 130
xor sil, cl
xor bl, cl
or al, 24
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and al, -103
test al, cl
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
xor al, 99
test al, bl
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
