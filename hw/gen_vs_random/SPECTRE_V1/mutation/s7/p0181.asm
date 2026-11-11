.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
neg ebx
movzx esi, sil
and cl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
add cl, -127
setl sil
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
mul al
add bl, -23 # instrumentation
setnle sil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
test ax, dx
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
xchg ebx, edx
lea ebx, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
add al, bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
cmp bl, cl
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -51
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
test dl, dl
adc bl, 88
lea rcx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
