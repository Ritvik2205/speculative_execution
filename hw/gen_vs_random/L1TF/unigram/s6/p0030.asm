.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 13
lea esi, qword ptr [rsi]
adc bl, -14
lea ecx, qword ptr [rdi]
sub si, -105
cmovo rdi, rdi
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
neg rax
lea si, qword ptr [rsi]
sbb ecx, 60
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], eax
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
sub bx, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
