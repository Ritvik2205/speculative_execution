.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 109
or sil, sil
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
cmovp rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
btc rax, rdi
and rdi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdi]
bts cx, 158
xor di, di
or dl, dil
mov cl, -38
test bx, bx
add dil, al
cmovl rbx, rdi
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rbx
cmovno rsi, rbx
cmovle rsi, rcx
cmovnbe rcx, rax
bt rsi, 153
add al, -32
and rsi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rsi]
inc ax
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 7
cmovl rsi, rbx
bts esi, eax
sbb di, -105
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
or al, -16
or esi, eax
xor dil, cl
test al, 57
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], edi
or bl, 61
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], di
or al, sil
imul rsi, rax, 42
movzx eax, dl
movsx dx, al
mul ecx
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
adc dil, -48
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 13
cmp bl, -79
and rcx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
