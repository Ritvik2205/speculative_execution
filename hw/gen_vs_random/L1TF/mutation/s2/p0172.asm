.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 0b1000000000000000 # instrumentation
bsr si, cx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
jmp .bb_0.1
.bb_0.1:
add dl, 125
and cl, dl
add rax, 909978580
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
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
