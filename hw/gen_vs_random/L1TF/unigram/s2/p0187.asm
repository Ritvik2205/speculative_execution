.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, ebx
and rdi, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdi]
inc ebx
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
or cl, 90
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
add dl, 62 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
not dx
adc dil, sil
adc sil, sil
add al, -112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
movzx edx, cl
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 103
xor dx, cx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
