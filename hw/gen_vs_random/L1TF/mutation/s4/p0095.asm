.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ax
add bl, 91
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
btr ecx, ebx
and rdi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
and eax, ebx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdx
lea rax, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
lea rdx, qword ptr [rdi + rsi]
mov rdi, -5671708760962025403
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
sub rax, 788906357
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
