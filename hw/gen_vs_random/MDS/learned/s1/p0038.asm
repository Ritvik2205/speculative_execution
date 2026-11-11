.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
bt edi, eax
xor sil, -46
or al, 54
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], si
and ecx, -104
test sil, -55
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rax], si
test ax, 30932
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or dil, cl
or cl, 119
and cl, dil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], dx
xor rax, -270810088
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
