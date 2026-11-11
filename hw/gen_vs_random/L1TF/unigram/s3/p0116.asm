.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dl
lea esi, qword ptr [rsi]
lea esi, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], esi
add dil, dl
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
cmovb edx, ebx
lea eax, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
add rsi, rdx
xor dil, dl
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 51
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
lea rdi, qword ptr [rsi + rbx]
and rdi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdi]
cmovp rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
