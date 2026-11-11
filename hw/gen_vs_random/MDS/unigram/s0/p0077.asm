.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
cmovb rax, rsi
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
or sil, sil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
xor cl, al
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edi
and sil, -108 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
xor cl, al
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], di
and al, sil
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
test ax, 30932
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
bt rcx, 1
and cl, 9 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
