.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -33
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], -78
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
inc bl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -259018739
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
or edi, 19
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -9758
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
