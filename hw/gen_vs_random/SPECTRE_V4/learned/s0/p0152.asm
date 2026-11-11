.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
add al, 27 # instrumentation
sbb eax, edi
movzx rax, bl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
cmovnb rdx, rdx
xor bl, dl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 67
add bl, 99 # instrumentation
sets bl
add bl, bl
add dl, dl
cmovz esi, eax
cmovo dx, ax
cmovnle rsi, rdi
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 41
cmovnb dx, dx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
cmovnp ecx, esi
and rsi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rsi]
add dil, 82
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], cx
imul dx
not dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
