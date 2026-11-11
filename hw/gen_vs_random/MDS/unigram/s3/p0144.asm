.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 86
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
test sil, sil
bts eax, 222
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
and eax, 461212071
cmovo esi, edx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
