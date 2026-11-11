.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, esi
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
btr ax, si
xor sil, -15
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
test di, 1
test rsi, 40
bt di, ax
test al, dl
btr dx, si
and si, -121
xor rdx, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
