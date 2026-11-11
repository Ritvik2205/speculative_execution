.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
mul rcx
setp bl
adc esi, -39
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -90
setnb cl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
dec dl
mov cx, -13260
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 38
sub rcx, 13
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
test sil, 13
test al, -126
add di, 44
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
