.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
add cl, -70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
cmovo rcx, rax
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
movsx edx, al
cmovnl di, cx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 93
lea rcx, qword ptr [rsi + rcx + 155]
or al, cl
imul edx
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
cbw
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 82
lea edx, qword ptr [rax + rcx + 5]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
