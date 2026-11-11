.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
and dl, dl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
not al
or sil, dl
test eax, 1838539683
xor bl, -61
and cx, -8
or al, -75
test al, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and al, -54
xor bl, -88
test cx, 401
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
