.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, -30637
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
setnle dl
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi]
movsx edx, dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -47 # instrumentation
sbb cl, 115
sub ebx, 75
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
cmovz ecx, ebx
bts bx, 64
sbb cl, al
movsx rdi, bx
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rcx
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
