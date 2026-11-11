.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rsi, 89
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
cmovle ecx, eax
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
cmovl edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
or cx, 0b1000000000000000 # instrumentation
bsr ax, cx
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 100
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
cmovle rax, rbx
or rdx, 90
or al, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
or si, 0b1000000000000000 # instrumentation
bsf si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
