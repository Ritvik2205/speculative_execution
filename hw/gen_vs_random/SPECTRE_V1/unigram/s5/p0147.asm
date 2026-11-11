.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 30
and dil, cl
add rsi, -60
lea rbx, qword ptr [rdx + rcx + 26]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
sbb esi, 32
test cl, -120
add sil, -68
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 76
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
adc bx, ax
and bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
