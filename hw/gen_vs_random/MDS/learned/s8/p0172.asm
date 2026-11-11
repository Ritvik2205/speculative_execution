.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -8
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
or ax, -14271
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xor sil, bl
or al, -75
and bl, bl
bt ax, si
and ax, 339
jmp .bb_0.1
.bb_0.1:
or al, cl
xor rax, -1128378406
xor al, dl
or dl, bl
xor al, -4
or al, 74
xor sil, cl
test bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
