.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, di
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 67
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
add cl, 89 # instrumentation
adc sil, bl
jmp .bb_0.2
.bb_0.2:
cmp cx, 48
add eax, 871834813
or rdx, -22
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
