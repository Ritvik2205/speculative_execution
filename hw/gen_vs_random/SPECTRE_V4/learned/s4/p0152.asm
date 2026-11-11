.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
or bl, 111
or eax, 1470564945
xor cl, -15
or bl, cl
cmovno rdi, rbx
test dl, -81
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 83
xor di, 27
xor al, -40
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
or al, cl
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmp dil, bl
and dl, dil
add cl, dl
xchg ebx, edi
cmp al, dil
xor dl, cl
add dil, 75
xor cx, ax
cmp dl, al
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
sbb sil, -11
add ecx, 99
test cl, -119
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 17
and dl, -11
test dl, -125
xchg esi, eax
adc cl, -86
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
