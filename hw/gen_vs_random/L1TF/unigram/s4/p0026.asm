.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 25
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
add al, -9 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
sbb al, dil
lea rcx, qword ptr [rax + rbx]
or rbx, 64
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
add dl, -117 # instrumentation
lea rbx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 91
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 72
sbb dl, dil
adc cl, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
