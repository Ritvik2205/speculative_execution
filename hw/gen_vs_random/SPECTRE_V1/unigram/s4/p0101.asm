.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 37
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
movzx eax, bx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdi]
add al, bl
lea eax, qword ptr [rdi + rax + 72]
sbb cl, cl
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
