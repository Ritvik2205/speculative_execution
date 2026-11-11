.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, 32
movzx dx, dl
xor rdi, rdx
cmovno cx, cx
xor al, -2
test ax, -5170
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
test bx, -1599
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
cmovl rcx, rsi
or dl, sil
mov rax, -8696242625349627833
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 87
bts bx, di
and dl, cl
and cx, 17
bt ebx, edx
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
neg sil
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
btc rbx, rdx
add bl, -18 # instrumentation
mov rcx, rdx
or dl, sil
and bx, 95
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
sub rax, -701741274
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
lea ebx, qword ptr [rcx + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rsi]
cmp al, cl
btc dx, 119
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rdi, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
