.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
bts rdx, 200
and cl, -71
xor bl, dil
or al, sil
test cl, dil
or rax, -689609688
or dil, -76
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
or al, -24
xor esi, 47
bts rbx, 56
and edi, 23
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
