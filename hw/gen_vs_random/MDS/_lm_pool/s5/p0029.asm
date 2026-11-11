.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or al, bl
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
xor cl, al
and sil, dl
and sil, -56
or cl, 119
xor rdx, -59
xor bl, -61
test ebx, -961564216
or sil, al
and ax, 31082
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
test dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
