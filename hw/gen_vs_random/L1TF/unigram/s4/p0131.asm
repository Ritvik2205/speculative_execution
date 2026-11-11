.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rcx + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
add bl, -127 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
sbb rcx, rdx
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rbx
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], -1
setnbe dl
add sil, -6 # instrumentation
cmovnb edx, esi
and rdx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rdx]
cmp bl, 123
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
