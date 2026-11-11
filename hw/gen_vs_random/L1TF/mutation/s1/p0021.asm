.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
sbb dl, cl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], -85
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
add sil, -111
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
xchg ecx, eax
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
mul rax
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], eax
test al, -5
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
mov al, -26
cmovnbe di, di
add eax, 760523556
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
