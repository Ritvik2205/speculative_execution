.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe rax, rcx
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
add ebx, edx
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
bt rdx, rsi
dec ecx
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
add dl, -105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], 79
bt bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
