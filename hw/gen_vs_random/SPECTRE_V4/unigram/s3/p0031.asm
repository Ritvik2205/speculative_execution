.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
add dil, al
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
neg al
adc edx, 31
sbb bl, cl
cmovnb edx, ecx
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
add dl, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
sub rcx, 10
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
or cl, al
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
or cx, 82
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
cmovnle rdx, rdx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
cmovz esi, ecx
sbb rax, rsi
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
or edi, 84
sbb edi, 65
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rbx
add bl, bl
and cl, dil
xor si, 10
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
not dx
xor cx, bx
not ax
imul bx
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
xor bl, cl
sub eax, -523763262
cmovz ebx, eax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 77
or dx, si
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
