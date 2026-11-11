.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, dl
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], -31
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
test sil, -31
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
test rcx, -1420345926
and dl, -109
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], -31
cmovnle rdx, rbx
cbw
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 3
movzx ebx, bl
or rdx, 92
sbb rax, 342397759
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
