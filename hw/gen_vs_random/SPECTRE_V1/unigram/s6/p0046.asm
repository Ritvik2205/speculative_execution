.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, 57
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
add al, 110 # instrumentation
cmovb rdx, rax
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 45
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 90
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
bt rsi, 94
mov dl, dl
add dil, 13 # instrumentation
setns dil
sbb edi, 95
lea bx, qword ptr [rdi + rdx + 43]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
