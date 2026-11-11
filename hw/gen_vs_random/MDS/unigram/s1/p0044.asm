.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and dl, -33 # instrumentation
cmovns rsi, rsi
cmovl rcx, rbx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 46
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
xor dil, 93
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 17
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 22
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and dl, -107 # instrumentation
cmovz rdi, rsi
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 15
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
xor bl, 2
or rdi, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
