.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
bts ebx, ebx
and edx, -44
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test al, cl
and rdi, rax
or sil, sil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 92
and al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
cmovbe rdx, rdx
or dl, dl
test ax, si
and cl, -126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
or cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
