.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, cx
xor rdx, -59
xor dil, -70
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
test dl, -119
not al
or al, -58
or sil, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and al, al
and si, -121
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
