.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
add bl, -77 # instrumentation
cmovns cx, bx
bswap rdi
cmovbe rsi, rcx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 55
btr ecx, ebx
add dl, -10 # instrumentation
cmovns edx, ecx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
imul dl
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
lea ebx, qword ptr [rbx]
lea rax, qword ptr [rdi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
