.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
test rbx, rdx
btr ax, di
btr edi, 1
add bl, -9 # instrumentation
adc rax, 1544006018
lea rdx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
or rbx, 1 # instrumentation
and rdx, rbx # instrumentation
shr rdx, 1 # instrumentation
div rbx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
add sil, -61
imul edx
add cl, -72 # instrumentation
cmovp edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
