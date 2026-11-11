.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rax + rbx]
lea bx, qword ptr [rdi + rbx + 32]
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 86
lea cx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 61
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
add cl, 43 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 44
cmovnz di, si
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
imul al
imul rdx, rcx, 76
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
