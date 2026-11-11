.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edi
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
add bl, -31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
imul al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
add dl, -78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
mul rdx
sub dil, -39
add dl, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
