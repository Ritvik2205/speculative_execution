.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
or eax, -1161451853
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
movzx ax, sil
and rcx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], sil
lea ax, qword ptr [rdi + rsi + 88]
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
xor cl, sil
lea rax, qword ptr [rcx + rax + 31]
sub dil, -32
not rbx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 88
cmp rdi, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
