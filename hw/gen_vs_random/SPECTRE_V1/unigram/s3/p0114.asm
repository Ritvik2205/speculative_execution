.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
test cx, 88
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 95
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
bt eax, ecx
add dil, 87 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
adc dl, 36
sub bl, cl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
setnz sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
