.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rbx, dl
sbb cl, cl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ecx
cmovno rcx, rax
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
movsx edi, ax
neg rsi
or dil, dil
add al, -8 # instrumentation
xchg cl, al
or cx, -74
inc rax
or ax, ax
cmovle rdx, rcx
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
cmp sil, bl
sbb cl, 12
mov sil, 3
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
sbb di, -105
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
adc rcx, rax
movzx si, sil
add bl, dil
inc ecx
cmp edi, 3
and ebx, -122
xor cx, -80
or dl, -26
and dl, dl
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 44
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
add eax, 84
cmp ecx, ecx
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
xor si, -73
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
cmovnz ebx, eax
mul bl
bt ebx, 81
add cl, -9
sub cx, -114
and rcx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rcx]
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
cmp sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
