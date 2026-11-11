.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
cmp al, dl
adc bl, dl
test al, 40
lea rcx, qword ptr [rdx + rsi + 15]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
lea di, qword ptr [rdx + rsi]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
cmp al, dil
cmovnle rax, rbx
sbb dl, dil
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
