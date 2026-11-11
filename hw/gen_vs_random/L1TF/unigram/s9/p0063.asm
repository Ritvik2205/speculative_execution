.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
adc ebx, 80
sbb cl, cl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], 46
lea rbx, qword ptr [rdi + rdi]
setnz sil
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
lea rax, qword ptr [rbx]
setns al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
imul rdi, rdi
imul bl
add dl, -8 # instrumentation
lea edx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
