.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, si
test ebx, -2015966884
test al, 22
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
jmp .bb_0.1
.bb_0.1:
or sil, -49
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
test al, 127
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 46
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 21
or al, 25
xor bl, -88
and al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
