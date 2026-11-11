.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
cmovl ecx, edi
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
lea ebx, qword ptr [rdi + rdi]
jmp .bb_0.1
.bb_0.1:
xor eax, -603819833
and dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
xor cl, al
and edi, ecx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
xchg si, di
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
add bl, 93 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], -15
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rsi
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
lea rdi, qword ptr [rsi + rax + 41973]
and sil, -90
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
imul si, cx, 27
and bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
btr esi, ecx
add bl, -79 # instrumentation
cmovo cx, di
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -64
add bl, 111 # instrumentation
cmovs rcx, rcx
bswap rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
