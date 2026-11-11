.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
add cl, bl
or ax, 12618
lea rdx, qword ptr [rsi + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
cmp cl, cl
lea ebx, qword ptr [rax]
and al, -105 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
add rdx, rbx
dec rax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 37
adc bl, al
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
