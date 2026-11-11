.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
lea ax, qword ptr [rax]
lea eax, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 18
sub dil, -111
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
imul dl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
