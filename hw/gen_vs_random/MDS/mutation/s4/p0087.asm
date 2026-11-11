.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
or dil, -71
test eax, edx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
or cl, 30
test ebx, -961564216
or ax, 85
and rdi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
jmp .bb_0.1
.bb_0.1:
and cl, 122 # instrumentation
cmovl eax, eax
and al, -8
cmovbe rsi, rax
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
bt eax, 151
and al, -23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
test cl, bl
test cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
or cl, 119
test cl, cl
cmovbe si, cx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
