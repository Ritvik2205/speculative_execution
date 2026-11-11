.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
add dil, -58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
sub al, 98
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
mul rdi
add rcx, rsi
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
cmovl rax, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 8
or rsi, rax
cmp al, 81
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
