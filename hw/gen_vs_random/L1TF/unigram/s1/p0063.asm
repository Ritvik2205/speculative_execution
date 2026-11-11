.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
adc dil, 15
and ebx, ecx
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 29
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 18
setnl al
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 80
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
add rbx, rdi
add al, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
mov sil, 54
sbb rbx, 28
add cl, -110 # instrumentation
setbe cl
xchg cl, dl
lea bx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
