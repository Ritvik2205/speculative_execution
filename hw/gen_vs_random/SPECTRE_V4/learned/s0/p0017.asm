.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 8
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
add bl, -72
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 63
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], si
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add bl, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb cx, dx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1
sub dil, dl
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
add dil, 16
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdi]
or al, al
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, al
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
test rax, -344032571
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
cmovnbe rax, rdx
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
add dl, -99 # instrumentation
not ecx
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
imul dl
xchg bl, dl
cmp bl, bl
sub al, 119
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
sub cl, -74
sbb eax, -1688332460
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
