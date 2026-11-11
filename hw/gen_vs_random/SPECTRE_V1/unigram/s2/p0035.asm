.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, cl
bt rcx, 14
test sil, 47
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
xor bl, bl
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
setnp bl
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx], 24
add dl, 57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
cmovnle ebx, esi
imul edx, eax
lea esi, qword ptr [rdx]
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 13
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
imul rbx, rdx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
