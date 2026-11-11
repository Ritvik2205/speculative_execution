.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub si, -92
and rcx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rcx]
xor sil, 89
mul dl
and dil, sil
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rax
and cl, -128
cmovbe di, di
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
adc dil, 112
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
xor ax, si
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdi
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
cmovbe edi, edi
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
or rcx, 56
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
test eax, 1340292467
movsx eax, cl
or ax, -30990
add rsi, 44
and cl, 32
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], -117
and esi, 126
add al, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
mul cl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 61
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 1
sub al, 26
xor sil, 90
xor rcx, 112
and rdi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdi]
adc rcx, 57
adc rdx, -90
adc rbx, 60
cmp bl, 12
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
