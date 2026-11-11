.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, ax
test bl, 78
cmp rax, 1682181214
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
mul rdx
imul ecx
cmp eax, -813838876
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
cmp al, 75
movzx si, bl
and edi, -102
movsx ax, dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
sub rdi, -52
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -19860
cmp rbx, rdi
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -122
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
sub cl, dl
imul cx, cx
cmp al, dl
bts esi, 18
btr rdx, rax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
mov al, 90
and rsi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
cmovs edi, edx
adc dl, cl
adc bl, 35
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
btc di, si
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdx
and esi, edx
xchg dl, al
adc rax, 2071185388
cmovnbe rbx, rcx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
cmovs dx, si
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
and rdx, 84
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdi]
add bl, -43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
imul esi, edx, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
