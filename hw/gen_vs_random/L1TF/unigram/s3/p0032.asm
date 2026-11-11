.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
adc al, 70
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
imul edx, edi
sbb bx, ax
cmovno dx, ax
jmp .bb_0.1
.bb_0.1:
xchg edi, eax
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
cmovnle bx, bx
xor bl, dl
btc dx, bx
movsx ebx, dx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
setnz dl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
