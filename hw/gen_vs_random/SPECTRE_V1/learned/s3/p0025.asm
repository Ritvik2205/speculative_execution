.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 92 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
add eax, -2019837038
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and bl, 76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
imul ecx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
add cl, -110 # instrumentation
setbe dl
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 79
cmovp rcx, rdi
test ebx, esi
or di, 0b1000000000000000 # instrumentation
bsf dx, di
mov rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
