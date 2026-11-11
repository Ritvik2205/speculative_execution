.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 63
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
movsx ebx, bx
lea rdx, qword ptr [rax + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 1
and rdx, rcx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
mov rcx, 92
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edi
bt rbx, rbx
setbe dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
