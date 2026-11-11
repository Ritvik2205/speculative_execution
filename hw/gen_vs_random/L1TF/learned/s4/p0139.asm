.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
lea rax, qword ptr [rdi + rbx]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 94
jmp .bb_0.1
.bb_0.1:
test dl, 84
sub si, 83
and dl, -86
test sil, 29
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 54
add si, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
