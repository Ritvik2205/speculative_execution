.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe ecx, edx
cwde
cmovnle rbx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
movzx rdi, di
cmovnle rdx, rdx
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
adc rdx, 51
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
add bl, 97 # instrumentation
cmovnbe ebx, esi
dec cl
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
cwde
lea ebx, qword ptr [rax + rax + 12]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
