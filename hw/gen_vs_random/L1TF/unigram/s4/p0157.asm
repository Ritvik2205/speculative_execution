.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
not al
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 91
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
lea rax, qword ptr [rax]
bt rax, rcx
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmovp ax, di
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
xor dl, cl
xchg eax, esi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
btc bx, 168
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
