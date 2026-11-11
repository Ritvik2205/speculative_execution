.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and cl, -63
or dil, dl
cmovb rbx, rdi
or dl, cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
bt ax, dx
or sil, -8
and si, bx
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
lea ecx, qword ptr [rdx + rbx + 33]
not eax
btc rsi, 84
cmovle rdi, rcx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 53
cmovnz rax, rcx
lea esi, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
cmp sil, dil
lea edi, qword ptr [rdx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
and al, 73
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
add si, 45
add dl, -99 # instrumentation
not eax
and rsi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rsi]
lea edx, qword ptr [rax + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
test eax, 758789512
jmp .bb_0.2
.bb_0.2:
setnbe al
or sil, -8
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
or dl, cl
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
imul cl
or al, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
