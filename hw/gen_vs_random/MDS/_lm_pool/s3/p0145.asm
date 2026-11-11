.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
bts rsi, rdx
xor dx, 60
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or dl, -97
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor al, bl
test rsi, 7
or cl, -77
and dl, dl
jmp .bb_0.1
.bb_0.1:
and al, 35
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and dl, -73
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
