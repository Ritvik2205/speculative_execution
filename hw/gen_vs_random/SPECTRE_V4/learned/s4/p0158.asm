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
lea edx, qword ptr [rdi + rbx + 43]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
cmovnz cx, si
xor bl, al
add rdx, rbx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
add bl, bl
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
or al, 96
or al, 96
cmovnle cx, cx
or si, 0b1000000000000000 # instrumentation
bsr dx, si
cmovbe ax, si
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
cmovz rbx, rdi
test bl, cl
mov rsi, rax
sbb cl, dl
adc al, 69
cmovnz edi, eax
adc al, dl
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
or ebx, ecx
or rsi, 76
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 12
mov cl, cl
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
or al, -71
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
imul bl
add cl, -117 # instrumentation
cmovs rbx, rcx
sub al, dl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
cmovnl ebx, eax
add bx, 110
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
