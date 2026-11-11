.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -18
add cl, al
adc dl, cl
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 6
sbb eax, 100
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -14
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], esi
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
lea rbx, qword ptr [rax + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
add cl, 103 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rbx
imul edi
add di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
