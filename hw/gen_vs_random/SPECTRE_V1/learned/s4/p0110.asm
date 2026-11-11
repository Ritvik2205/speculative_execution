.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
cmp sil, bl
cmp ebx, edx
xor cl, -103
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rdx, rax
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
dec dl
cmovnl esi, edx
add ebx, ecx
add dil, -6 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
mov cl, cl
and bx, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
