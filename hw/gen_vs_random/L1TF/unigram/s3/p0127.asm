.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, cl
lea rcx, qword ptr [rsi]
sub bx, 42
sub bx, dx
movzx bx, dil
setnz al
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and eax, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add al, -34 # instrumentation
setnp sil
xor dl, 9
or rax, 699028911
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rbx
sub dl, sil
cmovnz rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
