.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, -13169
mul ax
test dx, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
or si, 0b1000000000000000 # instrumentation
bsr di, si
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
add dil, 82
adc esi, 90
movzx ax, dl
xor eax, -437098167
and dil, 96
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
add bl, bl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
cmovns cx, cx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
bt ebx, eax
add al, al
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 21
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add ebx, 3
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
adc al, dl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
bts rbx, 9
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
movzx cx, bl
cmovnbe rbx, rcx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
cmovnbe dx, ax
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
imul cl
or al, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
