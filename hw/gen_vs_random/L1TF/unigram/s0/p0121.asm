.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dl
add al, 50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
not ecx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 78
add dl, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
adc rcx, 65
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
setp al
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
cmovz edx, esi
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
add sil, dil
cmovnp edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
