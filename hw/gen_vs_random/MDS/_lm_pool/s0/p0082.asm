.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 25
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and dl, -73
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
test esi, 425331143
xor dl, sil
and al, dl
and sil, 74
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
and rax, -731384280
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
