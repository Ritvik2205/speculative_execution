.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
or al, -57
sub dil, -70
mov cl, 13
xor rbx, 81
lea dx, qword ptr [rcx + rdx + 83]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 50
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
cmp al, 56
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
