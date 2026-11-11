.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 16
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
add bl, bl
imul esi, edi, 23
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
bt edi, 39
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
bt edx, eax
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 86
mov rdi, 41
test dl, bl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ebx
add al, 123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
xor edi, 97
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 48
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 15
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 18
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
or eax, ebx
test bl, 24
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
mul rbx
add sil, cl
adc ebx, 117
and dil, dl
not rcx
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], si
test sil, 21
cmovnz edx, eax
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
add al, 118
test sil, 25
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
