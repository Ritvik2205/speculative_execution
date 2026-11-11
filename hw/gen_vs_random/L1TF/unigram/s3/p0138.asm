.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ecx, ebx
btr edx, 96
add bl, -4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 88
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rdx
mov sil, cl
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
add cl, 102 # instrumentation
sbb bx, ax
jmp .bb_0.1
.bb_0.1:
imul rax, rcx, 14
sub ecx, 74
setnbe dl
sub dx, 1
imul rdi, rcx
setp al
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 60
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
