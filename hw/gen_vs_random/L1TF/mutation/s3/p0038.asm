.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
cmovnbe di, di
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], -85
add eax, 760523556
sbb dl, cl
add sil, -111
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
mov al, 79
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
xchg ecx, eax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
test al, -5
mul rax
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
