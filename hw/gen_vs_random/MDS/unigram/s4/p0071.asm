.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 20
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and ax, bx
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
xor edi, -47
xor sil, 50
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rsi
cmovl ecx, ecx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
and dl, 84 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
cmovnbe si, bx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
btr rax, 25
xor rdi, -50
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
cmovz rcx, rbx
cmovz ax, cx
not di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
