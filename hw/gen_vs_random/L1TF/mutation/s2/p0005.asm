.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 56
add sil, 18
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], eax
mov al, -102
mul rax
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
cmovnbe di, di
add eax, 760523556
xchg ecx, eax
sbb dl, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], -85
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
