.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
add al, -55
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
mov dl, dl
test dil, -58
adc al, al
adc dil, dl
add dil, 75
adc dl, cl
sub al, bl
cmp dil, al
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
