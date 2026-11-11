.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, al
btr eax, ebx
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
cmp dl, 119
cmovnz bx, ax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -95
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
or rsi, -14
adc rax, 1310333622
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 29
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdi]
setz sil
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
