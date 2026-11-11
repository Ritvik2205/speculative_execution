.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
mov al, al
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], esi
bswap rcx
movzx rcx, bl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and dl, bl
lea bx, qword ptr [rbx + rbx + 40]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 90
lea rsi, qword ptr [rcx + rcx]
sbb esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
