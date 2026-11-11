.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
add dl, -65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 32
add al, 10 # instrumentation
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 85
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 2
cmp al, 62
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 48
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
add cl, -51 # instrumentation
cmovl eax, edi
test eax, ecx
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
imul rcx
test dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
