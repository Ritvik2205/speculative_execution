.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, sil
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 70
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
test dl, 22
lea bx, qword ptr [rbx + rcx + 59]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
lea dx, qword ptr [rax + rax + 51]
xor dil, cl
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], eax
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
add dl, -39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
add al, 27 # instrumentation
sbb ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
