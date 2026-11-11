.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
btr cx, di
neg bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
xor si, dx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
add al, bl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
imul edx, ecx, 83
sbb bl, -94
sub eax, 2
add al, -117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
add dl, cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
sub dl, cl
cmovns ax, ax
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
adc al, -58
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
cmp bl, al
sub sil, -36
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
add sil, 110
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
sbb cl, dl
btc ebx, 94
sbb cl, bl
imul rdi, rsi, 57
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
or sil, 71
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
sub al, 99
cmovle rdi, rbx
adc rbx, 62
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
setp bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
