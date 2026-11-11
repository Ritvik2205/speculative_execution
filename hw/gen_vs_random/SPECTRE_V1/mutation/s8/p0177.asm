.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -90
setp bl
adc esi, -39
test al, dl
setnb cl
mul rcx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
add di, 44
dec dl
test al, 40
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 38
test sil, -31
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
sub rcx, 13
mov cx, 31310
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
