.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -19
bts rcx, 57
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rcx
and al, -8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
cmovp edx, eax
and cl, -71
and cl, 122 # instrumentation
cmovl eax, eax
test cl, cl
jmp .bb_0.1
.bb_0.1:
or dil, -41
xor sil, 27
test cl, 73
xor sil, 27
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rdi, 72
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], dx
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
