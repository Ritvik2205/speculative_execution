.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
xchg cl, bl
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edx
and al, -23
sbb dil, dl
jb .bb_0.4
jmp .exit_0
.bb_0.4:
cmovnbe rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
