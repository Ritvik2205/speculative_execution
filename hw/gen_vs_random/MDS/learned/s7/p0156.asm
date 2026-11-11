.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
or al, -17
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
test sil, al
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and bl, al
xor cl, 15
test rsi, 78
jmp .bb_0.1
.bb_0.1:
or rcx, -17
and al, 106
btr ax, si
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
test bl, 65
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
jmp .bb_0.2
.bb_0.2:
or dl, dil
xor sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
