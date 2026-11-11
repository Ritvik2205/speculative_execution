.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
and dl, 47 # instrumentation
cmovnp edx, edi
or eax, -696456144
xor al, bl
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
and eax, 454700988
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
and bl, 107 # instrumentation
cmovbe di, dx
cmovle di, si
and al, 49
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
or eax, 678817098
btr rdi, 129
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
