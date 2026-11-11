.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
cmovz eax, ebx
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rax]
add bl, -13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
add edx, eax
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
and eax, edx
cmp sil, dil
and cl, -101
xchg edx, ecx
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
cmp al, 109
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
adc sil, dil
or ax, -29521
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
sub sil, sil
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
sbb dx, dx
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
mov al, dl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rsi, 0
or rax, rcx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], ax
bt si, di
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rcx]
btr rax, 187
add cl, -120 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
