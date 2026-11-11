.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
add ebx, 25
cmp sil, dl
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 49
lea edi, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
lea rsi, qword ptr [rax]
sub ebx, edx
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
lea ecx, qword ptr [rax + rdx]
lea si, qword ptr [rdx + rsi]
cmp cl, al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 62
or sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
