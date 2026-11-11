.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 2
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
bts rdx, 255
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
cmovb rdx, rax
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or cl, sil
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
cmovnl esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
