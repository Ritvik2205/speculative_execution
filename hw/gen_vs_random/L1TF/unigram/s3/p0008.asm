.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
lea bx, qword ptr [rcx + rbx + 87]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
cmp cl, 57
mul rdx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rax]
test rbx, rdx
and rcx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rsi]
add bl, -116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
lea rdx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
lea ebx, qword ptr [rsi + rdx]
cmovb ecx, ecx
add ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
