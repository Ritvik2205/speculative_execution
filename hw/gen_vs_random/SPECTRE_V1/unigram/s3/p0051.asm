.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ebx, 29
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
add cl, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
bt rsi, rax
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 66
mov ebx, edx
sbb bl, bl
setbe cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rbx
add al, -92 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
add dl, -105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
