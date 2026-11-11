.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
lea rax, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and cl, 89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rcx]
adc bl, bl
movsx rsi, al
setp cl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, 63 # instrumentation
cmovle ax, si
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 81
sub di, 84
cmovp esi, eax
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
add dl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 16
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
