.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax, si, 4
add dil, 16
add dl, 12 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
adc ebx, 117
cmovz rdi, rdx
or al, bl
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and cl, 58
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 69
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
add cl, 8 # instrumentation
adc al, dil
cmovb ax, ax
cmovnl rbx, rbx
cmovb ebx, ecx
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
inc bl
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 65
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rbx]
imul bx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
sub dl, 43
bts rdx, rax
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 59
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
add dl, -99 # instrumentation
not eax
add bl, 110 # instrumentation
movsx cx, bl
or dl, bl
test eax, -544019457
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 53
add cl, dl
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
cmovz ecx, ecx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
