.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or al, bl
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
btc dx, 67
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
test bx, cx
or cl, bl
or eax, -1777347252
sub cl, 41
not bl
or al, cl
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and dil, sil
xor rax, 459999114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
