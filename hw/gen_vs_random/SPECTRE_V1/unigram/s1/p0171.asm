.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rax + rdi + 58]
imul dil
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
sub rcx, 33
or di, 0b1000000000000000 # instrumentation
bsr ax, di
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 22
or dx, 53
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
adc dil, sil
cmovnp rsi, rax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
lea rax, qword ptr [rdx + rbx + 67]
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
add cl, -83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
sub cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
