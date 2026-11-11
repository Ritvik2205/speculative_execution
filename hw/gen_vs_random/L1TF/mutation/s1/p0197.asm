.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
add sil, -61
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
imul edx
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
or rbx, 1 # instrumentation
and rdx, rbx # instrumentation
shr rdx, 1 # instrumentation
div rbx
add bl, -9 # instrumentation
adc rax, 1544006018
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
add cl, -72 # instrumentation
cmovp edx, edx
test rbx, rdx
lea rdx, qword ptr [rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
btr ax, di
btr edi, 1
jmp .bb_0.1
.bb_0.1:
add dl, -52 # instrumentation
adc bx, 45
mul rax
imul si, bx
btr cx, ax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -106
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], bx
btc bx, dx
mov bx, 21854
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
