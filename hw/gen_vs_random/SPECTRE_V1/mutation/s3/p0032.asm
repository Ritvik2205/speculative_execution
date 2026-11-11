.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc esi, -66
mul rcx
setnb cl
setp bl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 68
test al, dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 38
test al, 40
add di, 44
dec dl
test sil, 97
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
mov cx, 31310
sub rcx, 13
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
