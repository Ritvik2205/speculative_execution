.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ax, dl
cmovnp si, di
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
setz bl
lea rax, qword ptr [rax + rsi + 19]
adc al, al
lea ecx, qword ptr [rax + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
