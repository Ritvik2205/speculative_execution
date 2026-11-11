.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
add si, 4
sub rsi, rcx
add dl, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
movsx rcx, dl
not cx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 28
cmovb dx, dx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 42
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe ecx, ebx
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
dec rax
movsx ebx, ax
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
cmp bl, bl
cmovnb edi, ecx
cmp sil, al
xchg dil, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 39
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
movzx rcx, ax
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 49
imul cl
add cl, dil
sub dl, dl
test eax, -544019457
sbb al, cl
add al, al
sbb edx, 73
sbb rcx, rdx
test ecx, 8
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
adc rax, rsi
not cl
add rcx, 76
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdi
test ax, 23760
xor sil, 56
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 50
mov rcx, 5862286138240743445
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
