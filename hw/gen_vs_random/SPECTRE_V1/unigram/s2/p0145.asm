.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 2
mul dil
mov bl, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdi
lea rax, qword ptr [rbx]
cmovs rsi, rbx
loope .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
cmp ebx, -33
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rax]
sub ebx, 75
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
