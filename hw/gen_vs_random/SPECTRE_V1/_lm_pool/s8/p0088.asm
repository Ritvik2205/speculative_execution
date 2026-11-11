.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
cmp eax, -240917296
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
and di, 78
imul cx, si, 72
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
adc bl, -73
and dil, -93
mov al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
