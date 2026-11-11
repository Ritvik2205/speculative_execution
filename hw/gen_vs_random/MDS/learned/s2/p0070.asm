.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
xor sil, 110
xor cl, 24
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
xor bl, -27
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
xor rbx, 89
and dil, 125
or dl, sil
xor dil, 124
test edi, -1252846009
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
