.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
bt rax, rsi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 33
test ecx, 70
and rax, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rax]
cmp al, al
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
add dl, 87 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
xor dl, bl
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
cmovnz ax, bx
add bl, -76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
lea rdx, qword ptr [rcx]
cmp rdx, -19
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
