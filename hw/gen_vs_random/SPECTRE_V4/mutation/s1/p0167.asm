.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
xor cl, -101
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
xor al, -84
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
and esi, ebx
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
cmovb di, cx
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
cmovp rdx, rcx
imul ax
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
cmovle esi, eax
sbb eax, 40509622
sub cl, -32
movzx edx, di
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
bts bx, 102
add dl, -91 # instrumentation
cmovl rbx, rcx
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 83
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
mov bl, al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, -69 # instrumentation
adc dl, dl
adc eax, -689629357
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
add al, 17 # instrumentation
cmovnle edi, edx
dec dil
not si
and rsi, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rsi]
cmovb ax, si
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
neg rax
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
mul ecx
add al, -7 # instrumentation
btc dx, di
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
or si, 0b1000000000000000 # instrumentation
bsf ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
