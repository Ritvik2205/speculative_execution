.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, sil
test al, -71
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 5
mov ax, 39
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
cmovle ebx, edi
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rbx], ax
add dil, -27 # instrumentation
sets dil
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
and rax, rax
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], sil
add al, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
