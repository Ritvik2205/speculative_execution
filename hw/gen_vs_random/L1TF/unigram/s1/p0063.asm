.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub esi, edi
add cl, cl
movsx ecx, dl
sub sil, al
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
adc eax, 457059541
btc ebx, edi
or dl, -67
inc eax
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
inc bl
add dl, -70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
