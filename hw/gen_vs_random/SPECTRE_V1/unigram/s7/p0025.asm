.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rbx, 36
or al, bl
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
mov bl, al
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 66
setns al
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
add dl, 59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, dil
lea rbx, qword ptr [rsi + rcx + 74]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
not di
cmp rax, 1189904463
sub dl, al
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
