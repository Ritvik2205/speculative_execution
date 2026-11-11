.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
cmovle rdx, rdi
cmovp edx, ecx
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp eax, edx
cmp al, dil
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdi
or bl, 61
add bl, 7 # instrumentation
cmovnl esi, ecx
test cl, cl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -31106
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
