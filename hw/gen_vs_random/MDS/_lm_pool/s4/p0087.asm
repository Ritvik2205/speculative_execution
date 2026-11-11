.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
or sil, -78
and al, dl
xor dl, -19
and al, bl
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
cmovbe edi, ecx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
or al, dl
not cl
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
xor bl, sil
and dil, dl
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
