.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
add bl, -108 # instrumentation
sbb dil, 30
test rax, -1704969603
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
xor dl, 95
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 8
lea edi, qword ptr [rcx]
bt bx, 27
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
add dl, 83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
btr rdi, rax
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], esi
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
