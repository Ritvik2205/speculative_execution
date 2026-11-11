.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
btr si, 67
or rbx, 18
btr esi, 37
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
and ecx, 14
add dl, -125 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
cmp rsi, 8
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
dec eax
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
xchg rdx, rax
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
