.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
xchg eax, ebx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rcx + rax + 85]
sbb al, dl
add sil, 2
sub cl, al
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
cmp ax, 7452
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
