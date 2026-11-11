.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
cmovl rcx, rsi
btc rbx, rcx
adc rax, 1542637830
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
bt eax, edi
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edx
cmovnb ebx, edx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
or cl, 28
cmp dil, dl
sub bl, bl
movzx rax, cx
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rsi
add bl, -72
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
mov edx, ebx
cmovb rax, rdx
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 84
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
sub al, dl
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 100
sbb dl, al
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rsi], bx
bt esi, edx
sub eax, esi
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 7
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
mov rax, rbx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
cmp bl, 13
cmovs ecx, esi
imul rdi
mul rbx
cmp al, 19
bswap rdx
add ebx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
