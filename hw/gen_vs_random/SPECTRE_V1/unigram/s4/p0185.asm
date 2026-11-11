.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 62
sbb al, al
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
sub eax, -882981501
add sil, 2
lea rax, qword ptr [rdi + rax]
add dx, -103
lea eax, qword ptr [rsi + rsi + 7]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
mov al, dil
test ecx, 44
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
