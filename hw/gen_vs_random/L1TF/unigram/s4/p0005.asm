.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdi]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
sbb rbx, 22
xchg dx, si
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
add bl, 91
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
test al, -5
add si, 79
xchg bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
