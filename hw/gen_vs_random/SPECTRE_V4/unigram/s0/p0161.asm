.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, 13
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
bswap rcx
btc dx, 16
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
xor rbx, rdi
add ebx, 3
and ax, 35
or dl, dl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ebx
movzx cx, sil
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 22
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
add ecx, 36
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
cmp dl, al
xchg rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
add dl, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
cmovle rdx, rcx
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
add dl, -94 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
mul cl
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], edi
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], cx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 14
cmovnbe rdx, rax
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
imul rcx, rdx, 10
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rsi]
xor cl, -54
mov rbx, 9101099553822202722
adc ebx, 117
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
and rsi, 24
cmovnbe rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
