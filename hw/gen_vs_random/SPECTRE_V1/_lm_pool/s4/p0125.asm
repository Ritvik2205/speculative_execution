.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 59
sbb bl, 79
xor al, 54
sub al, -89
setnb cl
test bl, -8
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 62
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], esi
lea si, qword ptr [rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
sub al, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
