.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnl dil
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
cmovnp cx, bx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
lea ebx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
add dl, 38 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rdi
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or al, al
or edx, 14
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
and dil, -93
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], bx
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
