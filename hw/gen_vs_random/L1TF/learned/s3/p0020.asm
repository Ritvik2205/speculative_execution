.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dil
lea rdx, qword ptr [rbx + rdi + 98]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 67
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
adc ax, 87
add cl, al
sub dl, 105
and dil, dil
jmp .bb_0.1
.bb_0.1:
setno al
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
