.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
lea bx, qword ptr [rsi]
and edx, 48
sbb rbx, 3
add edi, edx
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], eax
and rdx, 56
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], -78
jmp .bb_0.1
.bb_0.1:
sub rax, rcx
setp al
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rdx
inc bl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
btc bx, ax
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
