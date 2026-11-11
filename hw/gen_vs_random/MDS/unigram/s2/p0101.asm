.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
btr rax, 29
or al, dil
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
or rdx, -109
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
xor cl, 24
and rsi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 29
and bl, bl
and dl, -41 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rcx
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
xor sil, sil
bt rdi, rdi
and sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
