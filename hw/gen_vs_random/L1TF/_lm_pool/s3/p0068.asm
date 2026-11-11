.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
sbb eax, -1165635662
inc rax
sbb eax, -1165635662
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rbx
cmp bl, sil
adc dl, al
lea ebx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb al, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
lea rax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
