.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -89
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and dil, dil
neg al
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
sets al
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
add cl, 40 # instrumentation
btc rcx, rcx
add ebx, -116
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, rdi
and bl, al
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
