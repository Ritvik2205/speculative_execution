.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
cmp edi, -104
xor al, -2
add dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rdx
cmovnbe rbx, rax
and rsi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rsi]
bts edx, 11
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
add esi, -5
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 2
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 94
sbb al, 32
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
add cx, 18
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 26
cmovs rsi, rcx
or edi, 21
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe ebx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rcx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
cmovnle esi, edi
inc edi
btr rcx, rbx
cmovo rsi, rsi
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
sub sil, sil
inc edi
xor sil, al
imul rax, rcx
sbb eax, -984782068
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
or eax, 1802312508
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
