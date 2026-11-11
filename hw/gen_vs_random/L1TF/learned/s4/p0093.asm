.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], -52
mov edi, edx
lea di, qword ptr [rdi + rdi + 8878]
movsx ecx, cl
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
lea rsi, qword ptr [rax + rbx]
add bl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 77
btr rsi, rdx
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
lea rsi, qword ptr [rax + rbx]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 77
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
lea edi, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
