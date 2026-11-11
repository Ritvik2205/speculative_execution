.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
lea eax, qword ptr [rdx + rdx + 832]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
sub al, -1
or rdi, 68
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rcx
adc cx, cx
loop .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
sbb bl, dl
btc di, bx
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
