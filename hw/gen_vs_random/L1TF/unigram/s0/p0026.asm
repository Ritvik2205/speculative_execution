.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 24
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
imul ax
add sil, 34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 8
cmovnle ecx, ebx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 103
sub sil, -87
and rsi, 98
inc bl
add sil, cl
lea rdx, qword ptr [rdx + rsi + 25]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
add al, 22 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
