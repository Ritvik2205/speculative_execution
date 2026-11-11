.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
sub cl, al
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
test dl, 113
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
lea eax, qword ptr [rbx]
xor rbx, rax
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
sbb ecx, 27
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
adc edi, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
