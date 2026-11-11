.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
cmovle si, si
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 64
xor bl, -38
or di, 0b1000000000000000 # instrumentation
bsf bx, di
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, -65
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], edi
add bl, -12 # instrumentation
lea rax, qword ptr [rdx + rsi]
sub dx, -23
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and al, -54
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
