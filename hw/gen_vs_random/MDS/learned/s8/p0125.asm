.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -7
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
xor dl, sil
xor dil, al
and dl, al
or al, cl
and cx, -8
or al, -61
xor cl, 24
and eax, 461212071
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
