.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
adc al, 41
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 38
movzx rdi, ax
btc edi, 125
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 1072797615
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
add bl, 54 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
imul ebx, eax, -112
and rbx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
add cl, 35 # instrumentation
cmovnb rdx, rdi
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 5
btr rsi, 20
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
add cl, dl
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
test cl, 78
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 4
add cl, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
neg rbx
test bl, cl
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rax], ax
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
sub dx, si
xchg cx, si
cmovle rbx, rdx
and rdi, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdi]
btr edx, 160
cmovns rsi, rbx
cmp rbx, -91
add dl, -10 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 103
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], eax
test al, 52
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
sub bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
