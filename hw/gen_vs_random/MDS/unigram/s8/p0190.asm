.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
cmovnp rdx, rbx
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
or edx, -1
test al, 91
bt di, cx
btr rsi, rcx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and bl, 20 # instrumentation
cmovo eax, edi
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 85
test rdi, 44
jmp .bb_0.1
.bb_0.1:
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
bt rdx, rdx
btc rax, rax
and al, al
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or dl, dil
xor bl, -88
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
