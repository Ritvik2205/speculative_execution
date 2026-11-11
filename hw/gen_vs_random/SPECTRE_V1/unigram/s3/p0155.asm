.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, bx
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdi
lea ax, qword ptr [rbx + rsi]
xor rbx, -34
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 22
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
and cl, cl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
add cl, 112 # instrumentation
movzx ecx, dil
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
