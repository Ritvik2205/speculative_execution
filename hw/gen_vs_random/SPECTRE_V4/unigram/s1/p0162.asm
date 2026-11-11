.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 91 # instrumentation
adc cl, bl
cmovnz rax, rbx
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx]
test eax, -31785616
add cl, -99 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], si
bt rbx, 63
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
mov rdi, -7956777892145474940
add dl, -8
inc edx
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
or rsi, 73
imul dl
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 73
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rsi
add al, -40 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
test sil, al
add al, -7 # instrumentation
btc si, ax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 40
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
add bl, -32 # instrumentation
cmovp rbx, rax
sbb ecx, 2
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 31
btc ecx, edx
or ecx, 17
and rsi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rsi]
cmp ecx, 5
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx], 82
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 72
dec ebx
cmovnz bx, ax
and rbx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rbx]
sbb cx, 106
cmp rax, rbx
and dil, sil
cmovbe rsi, rax
adc edi, -83
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
bts ax, di
mov al, bl
test bl, al
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 6
sub edi, 58
cmovp di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
