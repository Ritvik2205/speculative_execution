.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -13
or dl, 85
test sil, 41
and rax, 41
and al, 82
or cl, dl
xor ax, 31969
xor sil, -126
or al, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and di, 91
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
test esi, 1857129931
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
