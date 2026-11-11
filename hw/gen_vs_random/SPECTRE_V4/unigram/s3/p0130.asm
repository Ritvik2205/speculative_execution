.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 86
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
adc rbx, 60
or rax, -387680856
test bl, dl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
or ecx, 17
movsx rax, bx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
test al, 114
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
add al, -67 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rax]
inc edi
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 1
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdx]
or al, dl
add al, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rsi
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
mov ax, 31802
adc rbx, rdi
add cx, 23
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edx
cmp eax, 89
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
add dl, -82
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -10
mov dl, sil
bt ecx, 25
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 70
movzx rax, si
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
movsx esi, dl
sub al, al
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
adc edi, -83
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rsi], ax
bswap eax
mul al
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
