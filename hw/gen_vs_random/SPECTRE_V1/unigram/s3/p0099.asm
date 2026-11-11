.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], bl
sub rbx, -11
add al, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
add sil, dil
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], bx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
sbb dil, -93
adc al, -92
cmovle cx, si
bt eax, edi
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
adc dil, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
