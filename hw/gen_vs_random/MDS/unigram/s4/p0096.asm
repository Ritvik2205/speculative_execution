.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 78
and rdx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdx]
cmovb di, si
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 50
test rbx, rcx
or sil, -49
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
bt rcx, rcx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
and dil, -39
and dl, 119 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 42
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
cmovbe ecx, esi
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
