.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -9 # instrumentation
adc rax, 1544006018
add sil, -61
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
imul edx
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
test rbx, rdx
or rbx, 1 # instrumentation
and rdx, rbx # instrumentation
shr rdx, 1 # instrumentation
div rbx
lea rdx, qword ptr [rdx]
btr ax, di
add cl, -72 # instrumentation
cmovp edx, edx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
btr edi, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
