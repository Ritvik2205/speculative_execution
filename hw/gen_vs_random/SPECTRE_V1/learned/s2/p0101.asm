.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
mov dil, sil
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
dec ecx
lea rbx, qword ptr [rdx + rax + 95]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
add cl, al
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
