.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
adc di, 80
and rax, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rax]
lea rdx, qword ptr [rsi]
bts edi, edx
imul edi, ebx, 11
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
sub dil, dil
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 51
add al, 108 # instrumentation
setl al
inc rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
