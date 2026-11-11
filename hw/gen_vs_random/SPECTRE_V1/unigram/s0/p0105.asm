.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb eax, edx
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
add dl, 91 # instrumentation
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
lea rdi, qword ptr [rdx + rdi]
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], dx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 84
test sil, dl
test al, -126
and al, bl
movzx edi, si
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 16
cdq
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
