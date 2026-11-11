.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 78
and al, -68
xor ax, 0
sub ecx, 61
jmp .bb_0.1
.bb_0.1:
and dl, 73
jmp .bb_0.2
.bb_0.2:
and sil, sil
lea di, qword ptr [rax]
and bl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
