.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 4
test eax, 1729060510
test dil, 46
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
xor bl, 67
jmp .bb_0.1
.bb_0.1:
xor sil, 27
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or al, 30
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and bl, 15 # instrumentation
cmovb ax, di
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
test rdx, 84
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
