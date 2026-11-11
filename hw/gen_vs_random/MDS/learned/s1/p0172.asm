.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
bt edx, edx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
cmovl rcx, rax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
btr rbx, 96
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
or bl, 84
and cl, 122 # instrumentation
cmovnbe ecx, edi
or cl, dl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdi
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
cmovnle cx, cx
test rax, 1732677821
or al, -48
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
