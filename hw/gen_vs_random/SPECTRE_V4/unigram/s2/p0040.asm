.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, al
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
cmp bl, al
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
or ebx, -82
test bx, 24072
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 48
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
or rdx, rdi
and dx, -107
xor ebx, ecx
bts dx, di
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
cmovnb ax, ax
adc sil, dl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
sub edx, 73
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], sil
cmp ax, 26170
or rdi, -41
and al, -1
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], di
and rcx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rcx]
mov bl, cl
bts ax, 159
xor rax, -98
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
or eax, -646827727
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 6
sub al, 96
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
xchg edx, esi
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and dl, 24
cmovnle edi, ebx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
cmp di, -8
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
sub rbx, 101
xchg rcx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
