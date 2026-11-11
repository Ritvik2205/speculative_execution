.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
add dl, -1
bswap rdi
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ebx
and cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], -1
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
cmp cl, al
add bl, -124 # instrumentation
setnz bl
add rax, 1633593912
add bl, bl
cmovle ecx, edi
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
