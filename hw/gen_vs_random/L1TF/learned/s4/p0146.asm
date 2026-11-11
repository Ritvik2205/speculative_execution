.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
or al, -5
xor rbx, 91
or sil, dil
xor al, 16
sub dil, cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
cmovb bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
