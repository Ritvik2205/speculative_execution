.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
adc al, bl
sub dil, -39
add al, -80
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 27
cmp dl, -56
add al, dl
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
lea edi, qword ptr [rax]
cmovs dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
