.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 78
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ecx
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
movzx edx, dx
jmp .bb_0.1
.bb_0.1:
dec ax
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
sbb cl, -11
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
setnbe al
sub bl, al
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
imul eax, esi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
