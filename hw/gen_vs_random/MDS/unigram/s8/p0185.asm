.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], cx
cmovo cx, bx
btr edx, edx
and bl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
btr di, dx
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
btc rsi, rbx
cmovbe dx, cx
cmovle bx, di
bts rbx, 25
and dl, dl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and bl, sil
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], -41
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
xor dil, -3
and al, -54
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
