.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
btc edi, 125
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
neg rbx
movzx rdi, ax
xchg cx, si
add dl, -10 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 103
add cl, 35 # instrumentation
cmovnb rdx, rdi
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 4
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 38
add cl, dl
and rbx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdi]
sub dx, si
add cl, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
sub bl, cl
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], eax
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
adc al, -86
cmovns rsi, rbx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
cmp rbx, -91
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rax], ax
add bl, 54 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
btr rsi, 20
btr edx, 160
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
test al, 52
test bl, cl
test cl, 78
imul ebx, eax, -112
and rax, 37
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
cmovle rbx, rdx
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
