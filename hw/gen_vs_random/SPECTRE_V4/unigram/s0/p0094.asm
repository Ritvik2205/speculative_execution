.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz bx, cx
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rax
movsx edx, dx
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
sbb dil, bl
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
imul ebx, ebx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
add rcx, 32
xor rsi, rax
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 97
cmovp rdi, rbx
and bx, 30
mov sil, 85
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
bts ebx, eax
cmp dl, bl
xor ax, 13329
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -74
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
cmovnz rcx, rdx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edx
bt edx, eax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
xor dil, 117
add dil, dil
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
inc edi
btc edx, edi
dec esi
cmovnle rdx, rsi
add edx, ecx
cmp bl, al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rsi]
xor al, al
cmovbe ebx, edi
or al, -83
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
xor bl, -126
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 21
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
cmovnle rdi, rax
cmp edx, edi
add rdx, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
