.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
or ax, -6817
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
test eax, edx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
or cl, 30
or dil, 16
test ebx, -2015966884
jmp .bb_0.1
.bb_0.1:
and cl, 122 # instrumentation
cmovl eax, eax
bt eax, 151
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
and al, 82
and al, -23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
cmovbe rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
