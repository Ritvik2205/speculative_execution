.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -49 # instrumentation
adc dil, dl
or al, -57
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], 86
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
lea edi, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
xchg rax, rcx
or edx, eax
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
cmovnb edx, ecx
sub rax, 1806572419
cmovno rax, rsi
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rax
btr eax, 47
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
