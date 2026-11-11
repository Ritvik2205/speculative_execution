.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
test rbx, rsi
and ebx, -52
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
adc bl, 86
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
btr eax, esi
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
movsx ebx, bl
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], cx
and esi, 96
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
