.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dl
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
cmovno dx, dx
lea di, qword ptr [rsi + rdi]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
add di, ax
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], edi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], al
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
or rdi, 65
test edx, 7
sbb ecx, ecx
adc rsi, 57
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
cmp cl, -71
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
