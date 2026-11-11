.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
movsx edx, dx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
xor rdx, rcx
bts ebx, 197
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
btr cx, cx
adc ecx, 55
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
add dil, -99 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], si
neg dil
inc dl
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
test cl, -10
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
mov cx, bx
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
btr bx, di
add si, 81
sub rdx, 62
adc dl, dl
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx]
or ax, 57
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
xor cl, -101
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
add al, 27 # instrumentation
mov bl, dl
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 11
test sil, dl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], cx
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 84
cmp rcx, rsi
and rdi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
add dl, -91 # instrumentation
cmovl rax, rbx
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 37
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
cmovle rbx, rdx
imul rbx, rcx
or edx, 1 # instrumentation
add al, 49 # instrumentation
adc dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
imul di, cx, 46
or dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
