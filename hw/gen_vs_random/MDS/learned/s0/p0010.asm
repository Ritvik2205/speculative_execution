.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -119
or rcx, 54
xor cl, 98
xor rbx, 89
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
or dil, -78
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and dl, dl
jmp .bb_0.1
.bb_0.1:
test al, 127
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
jmp .bb_0.2
.bb_0.2:
or rcx, -17
or sil, -78
or al, 54
and sil, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
