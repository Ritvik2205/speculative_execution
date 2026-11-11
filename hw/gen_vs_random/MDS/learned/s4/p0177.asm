.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and dil, -62
or dil, -71
not sil
test rdi, 84
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
xor dl, 40
btr ax, di
xor rax, -345061362
and ax, 27170
and ax, -122
test al, dil
and al, 14
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
bt di, bx
xor di, -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
