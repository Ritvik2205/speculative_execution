.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
cmp al, dl
sub al, cl
lea rbx, qword ptr [rcx]
adc bl, al
lea rax, qword ptr [rbx]
and dx, 86
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
not di
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
mov dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
