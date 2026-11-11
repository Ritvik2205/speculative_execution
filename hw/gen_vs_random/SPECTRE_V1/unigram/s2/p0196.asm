.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
bt ebx, 45
cmovnb rbx, rsi
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -14 # instrumentation
lea ax, qword ptr [rdx + rbx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
sub rsi, rbx
add bl, 6 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
sub ax, -17837
add cl, -127
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ecx
cmovl di, dx
add bl, 70
imul ecx, edx, 88
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
