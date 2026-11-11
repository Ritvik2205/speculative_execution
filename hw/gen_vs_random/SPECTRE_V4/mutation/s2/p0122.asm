.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
movzx edi, al
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
cmovnb edi, ebx
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
and eax, -2001076187
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
mov bl, bl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
add al, 40
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
cmovl ax, bx
movsx rbx, al
cmp ebx, ecx
imul ax, dx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
xor rax, -111081832
imul edx, ecx, -116
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -51
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
cmovb rsi, rsi
movsx ecx, bl
dec al
dec edx
xor bl, cl
xchg bl, al
xor dl, al
mul sil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
add cl, -65 # instrumentation
adc al, cl
add si, ax
sub cl, cl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
xor al, 118
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rbx, rax
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
add dl, bl
add ecx, esi
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
