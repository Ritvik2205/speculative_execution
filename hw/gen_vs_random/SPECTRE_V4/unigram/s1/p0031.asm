.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, cx
add rdi, 111
movsx ebx, ax
xor cl, -101
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
mul bl
cmp rbx, -3
cmovle rbx, rbx
and bx, 51
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
sbb cl, al
cmovz rsi, rax
and rsi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rax
adc edx, -125
add cl, 35 # instrumentation
cmovnb rcx, rdx
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
cmp rbx, -66
bt rax, rbx
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
movsx ecx, cx
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rbx
cmovl di, ax
or cl, 1 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
or bl, dl
add bl, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
or ecx, 102
adc dl, cl
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], di
movzx ax, sil
sbb rsi, 117
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
mov rdx, rdi
xor sil, sil
mov al, 82
cmp al, bl
add ax, -9762
cmovl si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
