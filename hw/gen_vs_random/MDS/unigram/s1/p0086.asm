.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
or rcx, rbx
and edx, -44
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
cmovle bx, di
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
and rsi, rdx
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 0
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rbx, 65
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
xor edi, ecx
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
xor dl, al
and rdi, 14
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
or dil, dil
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
