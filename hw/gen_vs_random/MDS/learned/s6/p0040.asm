.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, al
or dil, -41
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
btr cx, di
or dil, cl
xor bl, cl
jmp .bb_0.1
.bb_0.1:
and bl, 68
and dil, dl
test al, dl
xor bl, -27
or bl, dil
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and dil, -39
or al, 16
and sil, -56
xor dl, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
