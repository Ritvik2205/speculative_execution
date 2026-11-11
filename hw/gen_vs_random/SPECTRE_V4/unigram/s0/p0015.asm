.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ax, -19255
test eax, -818909344
and rsi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
add bl, -10 # instrumentation
cmovnbe ebx, edi
bts rcx, rcx
cmovo rax, rdx
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
test sil, 29
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
cmp dil, al
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
mul ax
bts di, 76
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], cx
movsx ebx, ax
test sil, 34
movzx ebx, al
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and di, 7
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 51
and rdx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
add cl, -117 # instrumentation
cmovs rax, rcx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 72
cmp al, 81
mov sil, 100
add cl, 110 # instrumentation
movsx si, cl
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
sbb rcx, 71
neg sil
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
cmovnbe dx, ax
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
cmovnbe rcx, rsi
cmovle esi, edi
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
