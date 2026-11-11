.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
cmovnb di, dx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
sbb dl, al
inc ebx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 77
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -73
setz dil
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and eax, -409673666
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
