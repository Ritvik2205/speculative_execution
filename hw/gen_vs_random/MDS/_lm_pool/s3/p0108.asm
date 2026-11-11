.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
test cl, 0
xor al, sil
xor dil, -70
or dl, dl
jmp .bb_0.1
.bb_0.1:
or al, dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
or cl, 30
bt edi, edx
or bl, dl
or rax, 52
or bl, sil
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
