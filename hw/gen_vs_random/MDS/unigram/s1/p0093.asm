.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
test rcx, rdi
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rax], cx
cmovp rdx, rsi
cmovle rcx, rsi
xor al, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and cl, -34 # instrumentation
cmovs rdi, rcx
or bl, 13
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
or dl, cl
and dl, -67 # instrumentation
cmovnle rbx, rdx
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], edi
cmovle ax, di
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
cmovnbe bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
