.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 34
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
and rdx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdx]
movsx eax, cl
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], dx
imul dx, ax, -115
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
add cl, -6 # instrumentation
cmovo rdx, rbx
sub rax, 120
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
cmovnz si, dx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
or eax, -612395655
btr ebx, 87
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi], 65
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
movzx bx, al
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 51
cmp edi, 3
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
sbb dil, bl
or dl, -26
bts rcx, 38
mov al, al
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdx]
cmovnz ax, di
cmovp ecx, esi
mov al, 9
cmovz cx, si
sub al, 59
mov esi, edx
mov cl, dil
or dil, bl
cmovno edx, edi
sbb ax, 10407
cmovle dx, di
adc ecx, 114
or dl, 71
test rdi, rax
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
