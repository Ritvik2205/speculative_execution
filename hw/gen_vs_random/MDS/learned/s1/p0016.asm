.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
btc cx, bx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
jmp .bb_0.1
.bb_0.1:
and rax, 452940266
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
xor rdi, -9
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
xor dil, cl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
test al, 22
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
