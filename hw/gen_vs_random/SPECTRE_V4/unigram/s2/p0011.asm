.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rsi, 117
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
cmp ecx, 55
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
test dil, -58
add al, 111 # instrumentation
cmovno edi, esi
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi]
cmovl rcx, rdi
cmovb cx, si
cmp rsi, rax
or rdx, 1
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdi
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
add eax, ebx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
add cl, -6 # instrumentation
cmovo rax, rbx
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rsi]
movzx rdi, bx
mov rdi, rbx
sbb ax, 7207
xchg dl, dl
add al, -40 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
add al, bl
and rcx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rcx]
and bx, cx
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
bts bx, bx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
and dil, dil
sbb rcx, -73
sbb dil, cl
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdi]
sub dl, cl
cmp al, dil
and rax, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rax]
cmp al, bl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
sub edx, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
