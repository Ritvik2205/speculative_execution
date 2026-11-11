.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 94
and al, 106
xor cl, 98
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and bl, sil
lea rbx, qword ptr [rdx]
xor bl, dil
jmp .bb_0.1
.bb_0.1:
bts rcx, 27
and al, -54
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
xor si, 91
xor eax, -885380838
jmp .bb_0.2
.bb_0.2:
test sil, dil
xor al, 9
or al, -78
or al, al
xor cl, 24
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
