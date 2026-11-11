.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, 10
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
movzx rdi, dl
btc ebx, eax
lea rax, qword ptr [rdx + rcx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
add rsi, 22
and rax, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rax]
dec cx
bts ebx, 76
cmovl dx, dx
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
movsx ebx, bl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
not rsi
xor bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
