.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
lea rbx, qword ptr [rsi]
cmp sil, -110
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
add dl, -121 # instrumentation
cmovnp eax, ebx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], esi
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
test rax, -991273825
cmovle di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
