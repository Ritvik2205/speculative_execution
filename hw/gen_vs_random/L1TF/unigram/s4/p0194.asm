.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz ecx, ebx
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], ebx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
sbb dl, dl
adc rax, rax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
jmp .bb_0.1
.bb_0.1:
sbb cl, dil
lea bx, qword ptr [rbx + rdi + 15]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], dl
neg eax
adc sil, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
