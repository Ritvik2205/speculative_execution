.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dl, 10
xor rax, 1636804787
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
test dil, sil
setnl sil
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 106 # instrumentation
cmovs esi, ecx
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 13
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 47
add cl, 56 # instrumentation
cmovns ebx, ecx
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
movsx ax, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
