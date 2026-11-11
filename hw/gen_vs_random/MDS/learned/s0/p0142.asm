.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and al, dl
and rsi, 70
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rsi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdi
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
jmp .bb_0.2
.bb_0.2:
btc dx, 38
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
or ebx, edx
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
and rbx, 4
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 64
or rax, -285849275
or edi, eax
and al, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
