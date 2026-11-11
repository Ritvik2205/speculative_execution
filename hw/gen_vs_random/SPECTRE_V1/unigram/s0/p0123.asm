.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ecx
sub al, dil
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
movzx edx, cx
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
lea rcx, qword ptr [rdi + rdi]
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
imul ecx, ebx, 85
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
