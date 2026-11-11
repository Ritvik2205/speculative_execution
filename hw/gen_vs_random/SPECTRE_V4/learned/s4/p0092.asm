.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
or al, -88
dec cl
xchg rdi, rbx
sub cl, -73
or bl, cl
add dl, sil
test esi, -2111618709
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
xor dl, -123
adc bl, al
xor al, 55
and al, 75
and rax, 1072797615
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 15
dec al
xor dil, -23
xor dil, sil
sub al, 127
adc dil, -17
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
or eax, 143573881
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
bt si, cx
and cl, 126
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and dil, -120
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
sbb dil, 86
mov dl, cl
and di, -34
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
cmovle rcx, rbx
xor bx, 106
or ax, -29521
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
