.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 43
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
add al, -71 # instrumentation
adc al, sil
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rsi]
cmovl rax, rdx
adc dil, 47
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
bts esi, 241
mov rdi, 65
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovnbe rdi, rsi
sbb rax, 183833426
add bl, -21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
test al, 66
sbb eax, 1081973675
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
inc edx
bts edx, ebx
add al, dil
xor ax, di
movzx rbx, cl
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], sil
cmovnb rdx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edx
cmovns cx, di
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
cmovnle eax, ecx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
imul rdi
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
add dl, 48 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], sil
add bl, sil
imul sil
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and dil, 96
adc eax, -79
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
