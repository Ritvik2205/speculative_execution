.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 167
and rbx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rbx]
add bl, -72
movsx eax, di
mul dl
movzx edi, di
add dx, dx
sbb dl, -99
sbb eax, 4
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and eax, -24
dec esi
add cl, -37 # instrumentation
adc eax, -39
cmovle cx, bx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
cmovs esi, ecx
cmovb edi, eax
mul ax
mul rbx
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
bt esi, ebx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
adc eax, -1513455903
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 15
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 71
sub rcx, 67
and rdi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdi]
cmp bl, bl
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
cmovnp rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
or esi, 37
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
inc edx
add bl, -72
or eax, 1802312508
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 89
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
add ebx, 3
and dl, 57
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
cmovnb bx, bx
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
sbb al, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
