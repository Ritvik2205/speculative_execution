.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
sbb dl, dl
sbb al, -47
mov dl, -34
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
cmp dil, dl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
add sil, 110
sub cl, bl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
xor di, si
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
and bl, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
imul dl
or cl, dil
movsx edi, bx
and rax, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rax]
cmovnb rdx, rsi
xor edx, 71
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
sbb eax, 1081973675
movzx rax, cl
test sil, 60
add dl, -99 # instrumentation
not ecx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
test rax, -344032571
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
add ebx, ecx
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
imul esi, eax
mov rcx, 4219775168754920203
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
