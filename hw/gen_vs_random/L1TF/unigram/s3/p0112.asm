.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rsi]
or sil, sil
movzx esi, cx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
xor ax, 32760
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 58
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
bts edx, ebx
and rcx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rcx]
lea ebx, qword ptr [rdi + rbx]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
