.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], dx
sub al, 63
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
lea eax, qword ptr [rax + rdx]
lea rax, qword ptr [rsi + rcx]
sbb al, al
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], ebx
cmovnbe rax, rcx
movzx bx, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, al
setnb cl
cmovnle cx, dx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
lea rsi, qword ptr [rdi]
lea rdi, qword ptr [rax + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
