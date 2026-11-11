.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, 78
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add sil, 72 # instrumentation
cmovle si, dx
and rdx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
add dl, bl
sub eax, 2030845821
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
cbw
or dl, 1 # instrumentation
add sil, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
cmovle di, di
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 56
cmovz ecx, edx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
inc esi
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
cmovns ecx, edi
sbb bl, bl
test bl, cl
mov al, 88
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
btc rbx, rcx
and rcx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rcx]
adc dl, sil
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
test bl, bl
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
adc dl, cl
test eax, -544019457
cmp sil, dl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
movsx rsi, dx
lea rsi, qword ptr [rdx + rcx]
sub dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
