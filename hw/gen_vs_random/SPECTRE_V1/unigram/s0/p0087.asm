.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
mov rsi, 46
movzx ebx, dx
cmovnz bx, si
add dl, 59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rdi]
add sil, -94 # instrumentation
or bl, sil
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], 20
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
or dl, 41
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
xor cl, cl
cmovbe di, ax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
