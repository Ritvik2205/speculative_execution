.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, cl
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
add dl, -104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
movzx rcx, al
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
or rax, -263404965
bt di, 2
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
xor dil, 2
add cl, 32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
adc ecx, 39
and rcx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
