.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 43
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
and dil, dl
test cl, bl
btc eax, ebx
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
bts si, dx
cmovs bx, ax
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 61
bt si, dx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 47
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
cmovp edi, eax
or dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
xor bl, sil
bts si, ax
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
