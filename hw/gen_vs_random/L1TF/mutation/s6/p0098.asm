.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -1
and cl, dl
add rax, 1633593912
add bl, bl
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
cmovle ecx, edi
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], -1
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
add bl, -124 # instrumentation
setnz bl
bswap rdi
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
cmp cl, al
jmp .bb_0.1
.bb_0.1:
add cl, dl
sub al, dl
sub dl, 41
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
