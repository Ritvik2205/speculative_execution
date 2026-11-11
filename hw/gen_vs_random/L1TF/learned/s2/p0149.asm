.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc eax, eax
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and al, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
jmp .bb_0.1
.bb_0.1:
sbb cl, -11
jmp .bb_0.2
.bb_0.2:
lea si, qword ptr [rcx + rax + 98]
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
