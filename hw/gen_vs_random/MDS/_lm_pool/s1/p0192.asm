.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
xor rbx, 89
or al, -61
and eax, 366961170
test al, sil
xor al, 115
xor al, 99
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
or dil, dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
test bl, -14
or bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
