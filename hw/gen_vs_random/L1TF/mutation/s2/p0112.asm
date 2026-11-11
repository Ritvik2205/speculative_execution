.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, dl
lea rdi, qword ptr [rdi + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], -784964246
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
add al, -5 # instrumentation
adc cl, al
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
setnz dil
test eax, eax
neg rbx
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
