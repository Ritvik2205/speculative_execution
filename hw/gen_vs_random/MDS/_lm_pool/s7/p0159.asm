.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
btr cx, si
test rax, 1000448998
or al, -24
bts edi, 248
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 35
jmp .bb_0.1
.bb_0.1:
test al, -81
test cl, 62
or ax, -11837
xor ax, -1005
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
or al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
