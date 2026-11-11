.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
test eax, 899472326
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
sub rax, -2089384489
bt ebx, edx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 30
test cl, 63
xor di, 83
xor bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
