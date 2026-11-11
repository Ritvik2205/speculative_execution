.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, cl
cmovl ecx, esi
sbb al, 92
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
lea rsi, qword ptr [rcx + rdi + 28]
add cl, bl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
cmovb bx, ax
jmp .bb_0.1
.bb_0.1:
add dl, -10 # instrumentation
cmovns eax, esi
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 70
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
or ebx, 9
inc bl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
add dl, -8 # instrumentation
lea edi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
