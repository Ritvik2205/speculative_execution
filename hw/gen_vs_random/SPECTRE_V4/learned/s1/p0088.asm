.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
xor ax, bx
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
test bx, -1599
dec dl
neg al
cmovl dx, si
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
cmovle edx, edi
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], dx
sub ax, 24441
or al, al
cmovnp ecx, ecx
bt rdi, rsi
sbb cl, 19
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
