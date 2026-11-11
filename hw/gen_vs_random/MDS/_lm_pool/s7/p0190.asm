.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 23633
bts rbx, rdx
test dl, bl
bts rbx, 115
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
xor ax, -12492
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
jmp .bb_0.1
.bb_0.1:
test sil, -96
xor dx, 80
xor dl, 34
or dl, sil
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
xor bl, al
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
