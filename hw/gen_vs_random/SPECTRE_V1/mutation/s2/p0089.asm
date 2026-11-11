.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb cl
adc esi, -39
mul rcx
setp bl
test al, dl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 68
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
add di, 44
test sil, 47
dec dl
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
sub rcx, 13
mov cx, 31310
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 38
test al, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
