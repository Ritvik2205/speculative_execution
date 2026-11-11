.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
xor rdx, 96
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], 1
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
adc cl, bl
xor bl, 56
sbb dl, -23
cbw
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
cmovnbe rdx, rax
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], si
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
