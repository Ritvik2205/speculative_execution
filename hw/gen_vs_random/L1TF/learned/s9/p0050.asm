.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
add dil, cl
jmp .bb_0.1
.bb_0.1:
and ax, cx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
xor bl, sil
not dl
cmp al, -119
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
xor di, 12
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
