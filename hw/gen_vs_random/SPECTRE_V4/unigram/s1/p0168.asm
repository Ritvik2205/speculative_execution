.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not di
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], cx
sbb dl, dl
not bx
mov rbx, 9101099553822202722
and rdi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdi]
xchg rdx, rsi
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
dec rsi
cmovnbe rdx, rbx
imul bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
cmovb dx, dx
cmp rax, -1102558854
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
cmovp di, si
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and al, bl
mul ax
add al, 118
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 65
movzx rdi, cx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
neg dx
add rcx, rax
test dil, 30
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
cmovp edx, edi
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
btc rdi, rdx
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
add sil, dil
xchg rcx, rbx
not cx
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rax
imul cl
mov dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
