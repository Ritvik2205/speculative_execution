.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
add al, bl
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
cmp al, 56
adc dl, cl
or sil, -44
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
