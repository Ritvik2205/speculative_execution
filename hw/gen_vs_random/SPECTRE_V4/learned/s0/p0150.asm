.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 41
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
test eax, 1880179600
add si, di
cmovnl rcx, rdx
sbb rax, 183833426
imul di, dx
btr ax, si
cmp dl, 20
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 18
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
bt rax, 38
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 92
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
