.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno cx, bx
btc esi, edi
and dl, 91 # instrumentation
cmovnle edx, edx
bt rdx, rdx
or bl, sil
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and dl, -1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdi]
and edi, 23
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and dl, -26 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
btc edi, 230
test bl, -14
and dil, -39
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
and rdi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
