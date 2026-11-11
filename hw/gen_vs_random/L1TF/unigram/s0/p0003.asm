.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
mov eax, 44
lea dx, qword ptr [rdx + rbx + 34]
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
cmovl ebx, ecx
and rdx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rdx]
sbb rdx, 98
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rax, -109
add sil, -109 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
