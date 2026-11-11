.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
or dl, cl
or cl, cl
and al, 35
or ax, -11837
and bl, dil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or bl, dil
xor cl, 98
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
xor bl, -102
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and ax, 29207
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
