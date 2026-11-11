.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc dx, cx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
bts edx, ecx
add al, -112 # instrumentation
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
not dx
add al, 71 # instrumentation
setp dl
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 29
and sil, 69
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
xor cl, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
