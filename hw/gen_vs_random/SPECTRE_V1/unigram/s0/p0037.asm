.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 56
sub cl, -21
lea eax, qword ptr [rsi]
or al, cl
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
sub bl, -19
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 49
not ax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 90
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
add bl, -95
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 34
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
