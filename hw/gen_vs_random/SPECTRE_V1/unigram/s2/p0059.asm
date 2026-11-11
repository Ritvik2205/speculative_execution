.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
sbb al, dl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rsi]
neg esi
lea cx, qword ptr [rcx + rdi]
lea rcx, qword ptr [rsi + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
adc rbx, 11
setle al
lea rsi, qword ptr [rsi]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 39
add dl, -26 # instrumentation
cmovle rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
