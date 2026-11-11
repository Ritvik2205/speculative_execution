.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
add rax, 324518812
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
lea dx, qword ptr [rsi + rdi + 43]
add edi, ebx
lea di, qword ptr [rdx + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
test eax, 72
and rax, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rax]
sbb rax, 1380680934
xor cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
