.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, 15
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 26
xor cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 124
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
or dil, al
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 1
lea dx, qword ptr [rbx + rdx]
sbb ecx, 75
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
bt ax, di
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
