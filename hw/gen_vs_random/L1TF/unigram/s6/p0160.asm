.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rdx + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], ax
sub dl, -49
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
sbb sil, bl
bt cx, 28
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
btr ecx, 49
cmovl cx, cx
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
setp cl
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
and dil, 58
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
