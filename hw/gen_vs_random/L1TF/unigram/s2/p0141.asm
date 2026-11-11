.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
cmovp ebx, eax
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 18
jmp .bb_0.1
.bb_0.1:
xor rax, -68
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
add cl, bl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
movzx eax, dx
cmp dil, 49
setnle dl
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -6
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
