.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
movsx rax, bx
imul esi, ebx, 61
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
xor eax, esi
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
lea ebx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 24
xchg dx, bx
lea eax, qword ptr [rdi + rdi + 21]
add al, 57 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
