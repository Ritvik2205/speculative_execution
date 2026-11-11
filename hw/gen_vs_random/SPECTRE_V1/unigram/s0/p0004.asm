.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
add cl, 41 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], eax
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 62
and rcx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rcx]
xchg bx, ax
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
sub rdx, 96
add sil, 36
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 5
cmp sil, sil
add dl, 118 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
bt ebx, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
