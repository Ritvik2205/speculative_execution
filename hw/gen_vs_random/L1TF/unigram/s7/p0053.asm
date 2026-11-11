.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 90
bts ebx, esi
lea rbx, qword ptr [rax + rbx + 75]
add esi, -17
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
imul rax, rdi
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
inc ecx
xor al, al
add al, -113 # instrumentation
mov rdx, 4
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
add dl, 91 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
add al, -9 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 56
dec ax
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
lea edi, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
