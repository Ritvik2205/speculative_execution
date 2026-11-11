.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rax]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ecx
lea rdx, qword ptr [rsi + rax + 90]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
cmovb di, di
mov dl, dl
test dl, 71
sbb bl, 10
cmovl esi, ecx
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
sbb cl, -122
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
cmovp edx, edi
add al, -106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
