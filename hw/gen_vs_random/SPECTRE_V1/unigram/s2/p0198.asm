.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
add eax, 1938514106
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
or al, dl
adc si, si
cdq
movzx rbx, di
loop .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -25 # instrumentation
sbb si, dx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 65
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and ebx, 71
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
add bl, al
and rax, rax
add cl, -56 # instrumentation
sbb rax, 28
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
