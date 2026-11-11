.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 37
test dl, cl
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
xor dl, 40
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
jmp .bb_0.4
.bb_0.4:
or dil, -78
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
xor dl, 34
xor dl, 34
xor dl, cl
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
