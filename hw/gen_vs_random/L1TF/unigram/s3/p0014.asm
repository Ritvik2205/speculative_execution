.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, 50
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 83
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
movsx eax, bl
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 12
inc ecx
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rax
and ax, dx
bswap rax
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 61
jmp .bb_0.1
.bb_0.1:
add bl, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
btr edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
