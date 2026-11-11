.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, dl
inc sil
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
add eax, 871834813
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
lea si, qword ptr [rdx + rsi + 21492]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
cbw
add dl, 78 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
lea edi, qword ptr [rdi + rax]
test si, 10
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
