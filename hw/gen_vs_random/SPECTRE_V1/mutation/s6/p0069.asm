.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -14
sbb eax, 125
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], esi
sub sil, -18
add cl, al
adc dl, cl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
imul edi
add cl, 103 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rbx
lea rbx, qword ptr [rax + rbx]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
add di, bx
jmp .bb_0.2
.bb_0.2:
xchg al, cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
bt ecx, ebx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], si
setnp dl
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
