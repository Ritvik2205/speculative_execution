.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
mov al, bl
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rcx]
setp dl
xor edx, 79
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, -49
lea ebx, qword ptr [rsi + rsi]
movsx bx, dl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
cmovbe dx, cx
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rbx], esi
sbb esi, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
