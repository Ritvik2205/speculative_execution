.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
cmovp eax, eax
test dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and al, al
and edx, 96
xor dil, 58
xor eax, 73
bt edx, 254
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 92
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], esi
bt ecx, ecx
cmovnz ebx, eax
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 26
and al, 4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
