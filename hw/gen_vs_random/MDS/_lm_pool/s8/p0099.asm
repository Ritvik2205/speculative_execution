.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, si
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 18
xor bl, cl
and sil, al
jmp .bb_0.1
.bb_0.1:
or bl, dl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], cx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
bt dx, ax
jmp .bb_0.3
.bb_0.3:
test dl, al
or bl, cl
or dil, bl
or cl, -36
and cl, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
