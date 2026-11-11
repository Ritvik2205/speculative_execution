.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, -227205962
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
add rcx, rbx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rax
xor di, cx
adc bl, dl
dec rbx
cmovl rdi, rsi
movzx bx, al
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
setno dil
bts esi, 241
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 10
test rdx, 65
imul cl
not bx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
bts esi, 241
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
bt cx, 111
sub bl, bl
cmovnbe rax, rcx
and rax, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
or ebx, ecx
test bl, bl
add bl, -102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
cmovp rdi, rax
cmovp esi, eax
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
not dl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
cmovs di, di
sub rdx, 22
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
