.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rdx
cmovl eax, eax
and rsi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
and cl, 122 # instrumentation
cmovnb rcx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
xor cl, 93
cmovs edx, ecx
xor dil, 21
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb si, bx
or bl, 73
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or dil, -52
and bl, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
add al, sil
btr bx, cx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 17
and al, 73
cmovnp cx, ax
xor cl, 122
mul edx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 13
test rax, 1732677821
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
cmovnp ecx, ebx
and dil, bl
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
cmovnb si, si
test cl, dl
and eax, -872608366
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
test rcx, 85
adc al, cl
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 96
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 28
test bl, 106
cmovs si, si
cmovle rdx, rbx
imul cl
or al, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
