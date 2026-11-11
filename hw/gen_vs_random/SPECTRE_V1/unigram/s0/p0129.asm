.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
adc dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
lea edi, qword ptr [rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 53
cmp ebx, -33
add al, -8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 47
movzx eax, al
and rbx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 28
test al, -71
xor sil, dil
add dil, 72
test edi, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
