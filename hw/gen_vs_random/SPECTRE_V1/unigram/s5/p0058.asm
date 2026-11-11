.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 75
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
xchg rcx, rsi
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
lea rdx, qword ptr [rax + rdi + 83]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 75
not dx
lea si, qword ptr [rax + rbx + 41]
add dl, 117 # instrumentation
sbb rax, rbx
cmovnb rdx, rcx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 39
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
movzx eax, ax
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
