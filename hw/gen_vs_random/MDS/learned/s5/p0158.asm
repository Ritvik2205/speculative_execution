.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -26
xor si, 80
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
xor al, sil
test rax, -2052112368
or cl, al
xor eax, -885380838
test dl, al
or edi, eax
or dl, cl
xor rdx, -59
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
xor dil, -70
or rbx, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
