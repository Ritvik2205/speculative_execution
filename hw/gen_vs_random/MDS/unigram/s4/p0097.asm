.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
or rdx, rcx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rcx
cmovbe ax, dx
or bl, cl
or bl, -98
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
xor dil, 63
cmovb edx, esi
and edx, 97
and sil, cl
and cx, bx
and dl, 122 # instrumentation
cmovnb rdx, rsi
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 70
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
