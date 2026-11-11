.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
imul bx, cx, 4
lea cx, qword ptr [rdi]
and rdi, rdi
add si, bx
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
test bl, -8
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
add al, -13
adc al, dil
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
setp cl
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
