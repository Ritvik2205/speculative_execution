.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
sub edx, 74
movzx eax, al
or cx, 0b1000000000000000 # instrumentation
bsr bx, cx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
cmovnp rbx, rax
sbb dil, 54
bts eax, ecx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
add al, -117 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdi]
adc dl, 75
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 42
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 43
cmp sil, 88
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rbx]
and dil, 96
add edi, ebx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 16
cmovs rsi, rdx
imul cx, si
and edx, 10
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
adc al, -58
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
cmovz ebx, ecx
sub eax, 2
and dl, 10
sbb dil, 60
and rax, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rax]
sbb cl, -104
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
test al, bl
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
cmovb esi, esi
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], bx
btc rbx, 41
or dl, dl
btc dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
