.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
sub esi, edi
add cl, cl
movsx ecx, dl
sub sil, al
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
adc eax, 457059541
btc ebx, edi
or dl, -67
inc eax
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
inc bl
add al, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
