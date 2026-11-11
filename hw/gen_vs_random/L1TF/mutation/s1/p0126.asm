.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
setno dil
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 90
btc ebx, 11
and dl, -49
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
btc di, di
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
inc dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
inc rdx
or rax, 1362710293
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
