.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
setnz al
sbb rcx, 42
xor sil, al
and rcx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 70
cmovbe ebx, eax
and rax, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rax]
and al, -111
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
add bl, -93
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
add dil, dl
cmovo si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
