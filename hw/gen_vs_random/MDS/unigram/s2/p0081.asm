.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
cmovnp rcx, rcx
or al, al
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rax
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
cmovnb rcx, rax
and rbx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rbx]
bt ecx, edi
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 82
jmp .bb_0.1
.bb_0.1:
test sil, 17
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
or ebx, -15
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
and dx, 60
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
btr rsi, 146
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
