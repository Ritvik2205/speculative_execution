.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and sil, 47 # instrumentation
cmovnp esi, eax
xor bl, cl
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and bl, -74 # instrumentation
cmovns ecx, ebx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rcx]
and dl, 47 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovnp rcx, rdi
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
bt dx, si
bts rdi, rcx
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and bl, 96 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], si
btc rdx, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
