.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnle cl
cmovz esi, edx
lea rsi, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
test bl, cl
add al, 123 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 6
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
cmp dil, bl
add dl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
