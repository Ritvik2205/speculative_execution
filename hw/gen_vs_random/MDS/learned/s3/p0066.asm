.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
or al, dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
test al, dil
or dx, 125
and cl, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
xor bl, sil
xor rsi, -117
test dl, 27
and bl, 68
or rsi, 78
not sil
sub dl, 44
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
