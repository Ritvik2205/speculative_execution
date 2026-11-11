.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp dil
btc edx, edx
sub ax, cx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -88
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 25
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
adc dil, cl
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rbx]
cmovnb eax, esi
btr di, dx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
