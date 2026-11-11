.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
cmovle rdi, rsi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 13
adc esi, 90
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
btr rax, rax
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovs edx, esi
add bl, bl
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
sub esi, 1
sbb dl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
adc esi, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
