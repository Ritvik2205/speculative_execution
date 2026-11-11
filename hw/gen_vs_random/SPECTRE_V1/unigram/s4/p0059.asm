.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp edi, ebx
lea rcx, qword ptr [rcx]
xor rdx, 17
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], si
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 92
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
add dl, 83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
add cl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], edi
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
sub rcx, 52
cmp dx, 9
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
