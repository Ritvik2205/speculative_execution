.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edx
imul rax, rdi, -89
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
imul cx, bx
xor bl, -126
add cl, -123 # instrumentation
sbb al, 2
cmp bl, cl
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 72
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmovl cx, si
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
test al, cl
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rcx]
or dl, 71
and rbx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
sbb al, 31
imul bx, si, 59
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rbx]
not rdx
test bx, 24072
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
test bl, sil
and dl, -11
adc rdx, -90
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
add cl, -23 # instrumentation
cmovno edi, edx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
cmovno eax, ecx
or rsi, 73
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 82
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
