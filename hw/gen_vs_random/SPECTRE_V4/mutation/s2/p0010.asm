.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
sub dx, si
cmp rbx, -66
cmovle rbx, rdx
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
btc edi, 125
cmovns rsi, rbx
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
xchg cx, si
sub bl, cl
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rdi, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdi]
add cl, 35 # instrumentation
cmovnb rdx, rdi
add cl, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
add bl, 54 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], eax
add cl, dl
and rbx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rbx]
and rax, -779592432
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
adc al, 43
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rax], ax
imul ebx, eax, -112
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
btr rsi, 20
test cl, 78
test al, 72
add dl, -10 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 103
neg rbx
movzx rdi, ax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
test bl, cl
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 38
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 4
btr edx, 160
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
