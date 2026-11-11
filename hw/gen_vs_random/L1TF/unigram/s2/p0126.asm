.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dl
lea bx, qword ptr [rdx + rax]
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -118
lea rdx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rax]
mov eax, edi
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 15
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 17
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
lea si, qword ptr [rdi + rdi + 64]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
