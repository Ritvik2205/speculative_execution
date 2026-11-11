.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdx], dx
cmp ebx, ebx
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edi
movsx eax, cl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 8
setb al
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
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
