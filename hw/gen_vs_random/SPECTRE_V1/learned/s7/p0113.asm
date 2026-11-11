.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and dx, 89
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 32
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 69
add bl, cl
sub bl, sil
and dl, -92
and bl, dl
test al, -75
mov al, dil
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
