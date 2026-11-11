.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp cl, al
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
add bl, bl
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], -1
add dl, 125
cmovle ecx, edi
and cl, dl
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
add bl, -124 # instrumentation
setnz bl
bswap rdi
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
add rax, 909978580
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
