.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -61
add bl, -9 # instrumentation
adc rax, 1544006018
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
add cl, -72 # instrumentation
cmovp edx, edx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
btr ax, di
btr edi, 1
imul edx
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
lea rdx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
or rbx, 1 # instrumentation
and rdx, rbx # instrumentation
shr rdx, 1 # instrumentation
div rbx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
test rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
