.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, ax
test al, cl
not bl
bt dx, ax
and dl, al
and rax, 1886208862
not al
xor al, cl
test dil, -80
or al, -78
and dil, dil
and esi, 83
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and sil, -69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
