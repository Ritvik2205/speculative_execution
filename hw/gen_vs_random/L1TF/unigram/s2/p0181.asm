.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, bl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
cmovb eax, ecx
and rdi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
test ebx, ebx
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 16
add al, -60 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rcx]
add cl, 40 # instrumentation
cmovbe bx, si
add bl, 115 # instrumentation
setz sil
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
