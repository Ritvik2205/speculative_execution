.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 125
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 23
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
or rbx, 64
cmovnz ecx, ebx
lea dx, qword ptr [rbx + rax + 16]
imul ecx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -259018739
lea rdi, qword ptr [rbx + rdi + 4]
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
bts ax, 49
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
