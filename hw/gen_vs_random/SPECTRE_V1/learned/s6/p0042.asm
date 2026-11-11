.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb edi, ecx
test cl, -24
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx], 52
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
add sil, 2
setnle dil
and al, 33
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
lea cx, qword ptr [rsi]
and al, -23
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
jl .bb_0.3
jmp .exit_0
.bb_0.3:
or ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
