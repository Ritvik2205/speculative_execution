.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -14
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 6
sub sil, -18
sbb eax, 1392087754
adc dl, cl
add cl, al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
imul edi
lea rbx, qword ptr [rax + rbx]
add cl, 103 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rbx
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
add di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
