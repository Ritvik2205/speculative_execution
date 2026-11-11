.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 95 # instrumentation
mov dil, bl
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
lea si, qword ptr [rdi + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 68
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], esi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 69
test al, al
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -118
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 85
lea si, qword ptr [rcx]
sub ecx, 27
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
