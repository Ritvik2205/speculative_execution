.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle ecx, edi
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
add rax, 909978580
cmp cl, al
add bl, -124 # instrumentation
setnz bl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
add bl, bl
and cl, dl
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
add dl, -1
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
bswap rdi
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
