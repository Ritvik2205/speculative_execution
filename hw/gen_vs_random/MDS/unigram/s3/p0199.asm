.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, rbx
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
bt eax, edi
and edx, -44
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
bts rbx, rdi
xor rdx, -59
jmp .bb_0.1
.bb_0.1:
or cl, 30
xor sil, -14
and sil, sil
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
or dl, dl
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
bts rdi, 130
cmovs cx, si
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
