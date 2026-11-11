.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
bt edx, 91
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
add al, 96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
cmovz edx, eax
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
setnp dil
js .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -118 # instrumentation
cmovp ax, ax
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
setbe al
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
or ax, dx
lea dx, qword ptr [rdx + rsi + 7]
mov dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
