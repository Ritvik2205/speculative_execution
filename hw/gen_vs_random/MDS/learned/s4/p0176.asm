.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
and al, al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
not cl
or al, 25
xor sil, 27
bts rcx, 15
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
xor di, 93
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
or al, cl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
or sil, -49
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
