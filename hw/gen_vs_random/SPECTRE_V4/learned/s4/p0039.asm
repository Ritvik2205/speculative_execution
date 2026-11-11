.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, 123
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
test al, 80
sbb cl, bl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
test cl, bl
cmovl rcx, rsi
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
imul ebx, esi, 27
bts rdi, rsi
and al, -36
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
add dl, -26 # instrumentation
btr edx, 30
cmovz edx, edi
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
cmovnb dx, dx
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
add ebx, 3
cmovnz edi, edx
not rdx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edi
lea di, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
imul cl
add dl, -114 # instrumentation
cmovl cx, bx
test eax, -818909344
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
movsx rdi, cx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
cmovb di, di
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
cmovnb di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
