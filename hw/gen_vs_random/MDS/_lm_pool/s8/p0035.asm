.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 77
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
test dl, dil
test al, 127
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
or rdi, 21
and si, -121
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and rax, -636362975
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
xor sil, 94
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 56
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
