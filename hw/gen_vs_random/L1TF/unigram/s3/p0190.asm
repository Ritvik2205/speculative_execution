.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
lea cx, qword ptr [rcx + rcx + 10]
add bx, si
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
jmp .bb_0.1
.bb_0.1:
or cl, bl
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
movzx rsi, cl
sbb dil, dl
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi], 85
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
sbb cl, -123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
