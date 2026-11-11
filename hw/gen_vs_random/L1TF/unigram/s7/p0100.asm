.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rdi
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], 33
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 50
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 83
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], bl
xor rdx, 122
cmovnl rdx, rsi
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 82
inc ebx
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
