.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -5
xchg ecx, eax
cmovnbe di, di
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
mul rax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], -85
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
mov al, -26
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
add eax, 760523556
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], eax
add sil, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
