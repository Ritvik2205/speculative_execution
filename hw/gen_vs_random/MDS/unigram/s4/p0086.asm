.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rcx, rax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 112
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
cmovnbe rax, rax
not cl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], cx
and cl, -23 # instrumentation
cmovno eax, edx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 3
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
btc rcx, 46
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
or sil, sil
xor cx, -18
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
bts rdx, rcx
and al, al
bt edx, esi
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
