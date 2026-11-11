.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rdx + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
neg cx
add al, 50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
lea esi, qword ptr [rsi]
add sil, -93 # instrumentation
xchg rcx, rsi
add bl, 76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
xor dl, -91
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 33
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
sbb rdi, 110
lea ax, qword ptr [rax + rdx]
add cl, -38 # instrumentation
setbe cl
lea ax, qword ptr [rbx]
neg ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
