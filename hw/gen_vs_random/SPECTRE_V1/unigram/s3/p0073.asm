.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, -122
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 36
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
dec bl
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
setnl al
lea rdi, qword ptr [rdx + rbx + 61]
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -71
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
xchg bl, bl
adc sil, sil
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
add bl, 7 # instrumentation
cmovnl eax, edi
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
