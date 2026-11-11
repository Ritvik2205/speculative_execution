.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, 21
and al, -83 # instrumentation
cmovnp rdx, rsi
btc edi, 230
btc rsi, 80
or dl, bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
or rbx, -72
or sil, -78
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 14
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], ebx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], esi
test al, al
bt eax, edx
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and dl, -67 # instrumentation
cmovnle rbx, rdx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
cmovb rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
