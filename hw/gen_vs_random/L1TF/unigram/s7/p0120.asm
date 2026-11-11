.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, -22
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
add cl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 82
cmp ebx, 89
movzx edx, cl
add dl, al
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax], -19
imul al
add dl, -123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rcx]
test rax, rdi
movzx ebx, al
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
