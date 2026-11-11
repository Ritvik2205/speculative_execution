.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb dx, bx
and dx, 60
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
cmovnb bx, si
and esi, 2
cmovs cx, cx
cmovnbe rcx, rbx
cmovno rdx, rdx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
and dl, -125 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
or bx, 85
and dl, cl
cmovz esi, ebx
cmovns cx, ax
xor rsi, -117
cmovnz rcx, rax
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
