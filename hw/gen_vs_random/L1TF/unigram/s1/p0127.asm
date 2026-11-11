.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, ax
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
bswap edx
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
cmovno ax, cx
lea cx, qword ptr [rdx + rdx + 9623]
lea rdi, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
sbb rdx, 98
not ecx
or dx, 1 # instrumentation
dec rcx
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 70
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
add al, 31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
