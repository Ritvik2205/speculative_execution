.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle cx, cx
add bl, -76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
sub bl, sil
and rbx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
add cl, -84 # instrumentation
lea ecx, qword ptr [rdx + rdx + 51]
lea rcx, qword ptr [rbx + rsi]
not edx
cmp rax, rsi
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
lea ax, qword ptr [rbx + rcx + 33]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 36
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -93
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
mov al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
