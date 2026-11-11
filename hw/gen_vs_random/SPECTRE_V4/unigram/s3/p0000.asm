.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ecx, esi
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 51
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe ebx, eax
cmovnbe rdi, rsi
sbb ecx, 41
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
add dl, dil
cmp bl, 13
and bx, 95
cmovnp si, si
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
imul sil
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], di
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
btc dx, 16
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
dec rdx
cmovnp edx, eax
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
add eax, -1796699558
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 60
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
imul eax
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
movzx eax, ax
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 60
sub sil, -36
xor cx, 39
movzx si, al
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 33
add eax, -1796699558
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
test al, 66
bt edi, edx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
adc dl, 53
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add al, -10 # instrumentation
mov ax, 39
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rsi
add bl, -72
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 19
cmovs ecx, ebx
sub dx, ax
cmovb rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
