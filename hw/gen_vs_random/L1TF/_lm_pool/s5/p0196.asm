.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, dx
sub bl, -96
xor esi, 61
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
cmp ax, -6940
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
