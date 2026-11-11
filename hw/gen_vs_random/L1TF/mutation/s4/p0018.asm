.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rdx]
btr edi, 31
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
add cl, -72 # instrumentation
cmovp edx, edx
imul edx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
add bl, -9 # instrumentation
adc rax, 1544006018
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
add sil, -61
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
or rbx, 1 # instrumentation
and rdx, rbx # instrumentation
shr rdx, 1 # instrumentation
div rbx
test rbx, rdx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
btr ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
