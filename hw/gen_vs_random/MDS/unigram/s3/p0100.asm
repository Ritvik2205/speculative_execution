.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp di, cx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], esi
bt edx, 69
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 22
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
and al, sil
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and dx, bx
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
btc rax, 45
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 5
not di
or dl, dl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 18
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
