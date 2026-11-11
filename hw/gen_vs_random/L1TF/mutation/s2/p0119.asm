.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
add cl, -41 # instrumentation
adc ax, di
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
and dl, 32
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
xor al, al
jmp .bb_0.1
.bb_0.1:
cmp esi, -52
lea edx, qword ptr [rsi + rsi]
setnbe cl
xor ax, -16232
or eax, 287965578
lea di, qword ptr [rdi]
jmp .bb_0.2
.bb_0.2:
cmp edx, edi
xor dl, cl
add dl, dil
cmovle si, bx
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
setnbe cl
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
sbb edi, 10
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
lea rdx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
mov al, al
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
