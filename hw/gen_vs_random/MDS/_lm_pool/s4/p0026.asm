.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 15
and cl, -19
xor rdi, -9
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
test bl, -114
test al, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdi
jmp .bb_0.1
.bb_0.1:
test al, 127
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
bts rax, 77
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
