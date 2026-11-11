.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ax
add bl, -93
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
imul ecx
sub dil, cl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdi
add rax, rcx
mov al, bl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
lea di, qword ptr [rax]
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
add rcx, rbx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 15
inc rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
