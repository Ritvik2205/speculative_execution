.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
cmovbe rdi, rsi
cmp bl, -114
adc eax, -655457029
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp edx, 44
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 69
sbb cl, 105
setz al
movsx rbx, bx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], bl
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], cx
cmovs dx, si
sub cl, bl
lea ax, qword ptr [rdx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
