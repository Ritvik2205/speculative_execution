.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
not ecx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
sub al, -75
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx], 88
btc ax, dx
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
adc sil, 66
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
