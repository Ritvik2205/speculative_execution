.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp sil, 25
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], ecx
movzx edx, di
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
cmp edx, 44
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
bt rax, 45
and edi, edi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
lea edx, qword ptr [rbx]
sub bl, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
