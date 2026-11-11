.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 6
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], edx
cmp rdx, -19
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
mov bl, dil
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 63
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], dx
adc cx, -30
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
