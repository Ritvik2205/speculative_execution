.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, cl
adc dil, -48
cmovno rsi, rax
cmovnb edi, edx
and cl, bl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
mov rcx, rsi
add al, -44
test dx, 28394
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1014276215
not dx
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
btr rax, 187
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 91
or eax, edx
or rsi, 73
cmp ax, 26170
sub eax, -865916088
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 0
and cl, sil
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
bt dx, 193
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rbx
imul ax, dx
adc sil, -112
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
btr bx, dx
add al, 89 # instrumentation
cmovnle bx, di
test al, al
or al, dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
sbb eax, 1675303701
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 50
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rcx
not al
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
mul al
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], si
mov rdx, -3088288992777791879
cmovnl cx, bx
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
