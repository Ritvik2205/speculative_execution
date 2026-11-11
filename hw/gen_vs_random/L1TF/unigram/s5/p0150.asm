.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul al
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 86
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test cl, cl
adc bl, bl
and rax, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 9
lea si, qword ptr [rdi + rax + 41]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rax]
xor ecx, 36
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
add bx, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
