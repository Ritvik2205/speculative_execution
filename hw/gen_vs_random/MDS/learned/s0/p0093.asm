.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
or cl, al
btr dx, ax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
test bl, cl
or dl, cl
and si, -121
or dl, sil
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and dl, -73
or dil, al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
or al, 37
test bl, sil
or cl, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
