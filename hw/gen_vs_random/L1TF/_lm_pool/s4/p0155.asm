.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dil
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
xor rax, 20
xor al, dil
jmp .bb_0.1
.bb_0.1:
test al, cl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], esi
or dl, -67
and sil, 93
jmp .bb_0.2
.bb_0.2:
add al, -46
test eax, 645518295
test dil, -126
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
