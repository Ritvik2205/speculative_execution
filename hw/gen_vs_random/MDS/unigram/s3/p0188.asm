.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 122 # instrumentation
cmovnb rdi, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 83
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and al, 126
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edi
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 48
and cx, di
bt esi, esi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
or al, dil
and dl, -49 # instrumentation
cmovno dx, di
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
or al, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
