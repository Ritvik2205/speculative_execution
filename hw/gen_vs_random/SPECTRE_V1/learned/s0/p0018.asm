.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
inc si
sbb cl, -122
setle cl
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
dec al
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 57
lea edx, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 34
test dil, 18
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
