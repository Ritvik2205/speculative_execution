.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or al, 37
jmp .bb_0.1
.bb_0.1:
xor dl, cl
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
or al, -24
and rdx, 87
test edi, -1252846009
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
sbb eax, 53
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], si
or cl, dil
or cl, -36
xor ax, 31969
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
