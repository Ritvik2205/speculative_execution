.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rax, rcx
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
xor esi, ecx
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
sub edi, 30
add dl, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
lea esi, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
or al, cl
or al, -87
add dl, 109 # instrumentation
sbb dl, 16
add bl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
cmovnle rsi, rsi
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], 96
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
