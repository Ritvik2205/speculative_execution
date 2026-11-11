.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 49
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
mul ax
test dl, bl
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 20
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
xor eax, 181978569
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], bx
test cx, 50
sub al, 98
mul rbx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
