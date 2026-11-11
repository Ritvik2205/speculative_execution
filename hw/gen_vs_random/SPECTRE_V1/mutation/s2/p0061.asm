.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rbx]
sub bl, al
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
lea bx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add ebx, -116
cmovnbe si, ax
and cl, 86
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 5
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
