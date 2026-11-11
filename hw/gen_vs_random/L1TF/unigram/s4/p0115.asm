.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not si
cmovs dx, ax
sbb dl, -26
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
btr ebx, ecx
sbb bx, ax
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and bl, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
cwde
cmp eax, eax
and rdi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
lea rsi, qword ptr [rcx + rcx]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
