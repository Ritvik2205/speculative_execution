.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and al, dl
xchg ecx, eax
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
or rax, -285849275
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 58
jmp .bb_0.2
.bb_0.2:
or dx, si
jmp .bb_0.3
.bb_0.3:
and dl, 60 # instrumentation
cmovno edi, edi
cmovz eax, edi
cmovnle rsi, rsi
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
test al, 74
not edi
bts rsi, 89
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
bts rdx, 255
cmovnz rax, rdi
test cl, 48
and rcx, 73
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rbx
sbb dil, 11
and cx, 39
adc al, 98
cmovo dx, ax
cmovb edx, edi
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
sbb cl, 97
or ebx, edx
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 4
imul eax
test rax, 1732677821
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 84
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
cmovnle edi, ecx
adc esi, 58
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
sbb dl, dl
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
