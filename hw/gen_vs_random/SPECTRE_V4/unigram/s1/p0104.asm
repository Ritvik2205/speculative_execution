.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 17 # instrumentation
cmovnle edx, edi
xor bx, di
mov dil, bl
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and eax, edi
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 66
cmovo ecx, eax
sbb eax, 1002977021
test sil, dil
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
add edi, 22
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
cmovl rdi, rdx
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
sbb ebx, esi
neg dl
btc rax, 227
sub cl, al
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
xor sil, dl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 79
add dx, 9
or sil, dil
and rcx, 0b1111111111111 # instrumentation
mul cx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], edx
test cl, -31
xor ecx, ecx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 77
and bl, dl
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 79
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
test cl, 78
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and cl, -128
add al, 74 # instrumentation
cmovle eax, ebx
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
or cl, -55
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
