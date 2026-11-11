.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ecx
mov sil, al
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx]
sub cl, -47
adc ax, 24404
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
or sil, bl
add al, dl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
lea di, qword ptr [rdx + rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
