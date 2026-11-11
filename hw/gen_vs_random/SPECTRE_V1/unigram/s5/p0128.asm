.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdi
sub rbx, rbx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
or rax, -1571963467
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 65
and rsi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, dl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
lea rdx, qword ptr [rbx + rcx + 39]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add dil, -46 # instrumentation
cmovbe rdi, rbx
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
