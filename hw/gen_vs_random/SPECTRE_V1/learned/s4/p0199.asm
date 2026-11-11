.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
dec rcx
and cl, 122 # instrumentation
cmovnb rcx, rbx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
and rdx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdx]
xor al, 86
cmp ax, 23607
or al, al
setnp cl
and sil, bl
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
lea si, qword ptr [rdx]
cmovns eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
