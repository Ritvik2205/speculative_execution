.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
cmp bl, dl
setnp dl
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
sbb sil, 126
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 75
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ecx
add bl, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 35
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -25
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
cmovs ax, bx
cmovs cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
