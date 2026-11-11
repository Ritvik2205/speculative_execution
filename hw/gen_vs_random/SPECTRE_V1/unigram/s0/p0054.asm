.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 13 # instrumentation
setns al
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 41
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 39
lea rcx, qword ptr [rbx + rcx + 45597]
add bl, -125 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
add dl, 20 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 67
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], 69
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
js .bb_0.1
jmp .exit_0
.bb_0.1:
movsx dx, al
cmovns rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 17
btr esi, 73
sbb rsi, 39
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
