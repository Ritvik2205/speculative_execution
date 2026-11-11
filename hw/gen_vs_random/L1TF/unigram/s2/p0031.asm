.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -5
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
imul cl
cmp dx, 35
lea rcx, qword ptr [rax + rdi]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], -10
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
cmovnbe ebx, ecx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], esi
lea si, qword ptr [rax]
adc sil, sil
cmovo rsi, rcx
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
adc ebx, 99
and ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
