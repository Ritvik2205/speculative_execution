.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 70
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
bt rax, 75
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
cmovnle cx, cx
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
bt si, cx
or eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rdi, 66
cmovnle dx, cx
cmovb rdx, rax
bts ax, 22
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
and al, -114
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 42
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
and dl, -125 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdi]
or esi, -110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
