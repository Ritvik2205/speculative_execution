.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 30
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
bts rdi, 130
xor al, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
test dil, 46
or cx, -42
and ax, -4410
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and eax, -574348013
and al, -103
test eax, 1287331633
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
or sil, cl
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
