.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 80
cmovnle edx, ecx
add dl, -10 # instrumentation
cmovns ecx, edi
btr rsi, 93
or cl, -78
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
bts rsi, rax
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 21
xchg ecx, esi
lea rbx, qword ptr [rdx + rbx + 32]
cmp edx, 99
sbb ebx, ebx
sub rdx, 41
lea bx, qword ptr [rcx + rbx + 2]
btc si, si
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
