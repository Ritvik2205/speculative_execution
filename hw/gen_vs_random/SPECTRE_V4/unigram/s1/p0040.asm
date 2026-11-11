.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
sub bl, dl
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
test di, -19523
mov rax, rcx
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 3
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 34
cmp rbx, -66
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
cmp ax, 28568
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
btc rbx, rcx
cmovp rax, rdx
or cx, -74
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
btr cx, 252
sbb al, 57
movsx di, sil
add bl, bl
add al, 66 # instrumentation
cmovp ecx, ecx
test bl, cl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
xor rax, rcx
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
sub rax, -1680844889
mov dil, cl
cmp cl, -80
movzx rax, cx
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
test al, -85
or dil, bl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
cmovnb si, si
cmovno rax, rcx
xor si, -73
movzx eax, dl
cmovnbe rbx, rcx
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], esi
xor esi, esi
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
or al, al
and dil, dil
sub di, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
