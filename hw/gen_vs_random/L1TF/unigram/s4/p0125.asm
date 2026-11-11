.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
sbb rdi, 97
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 90
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdi
sbb dl, -26
setns dil
jmp .bb_0.1
.bb_0.1:
not ecx
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
cmovs cx, di
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
setl cl
bts rbx, rcx
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
