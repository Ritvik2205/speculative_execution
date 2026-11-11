.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
cmovns rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
cmovnl ax, di
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
xor al, 77
jmp .bb_0.1
.bb_0.1:
and cl, 85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
or cl, 10
bt rcx, rcx
and cl, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
and cl, 102 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
xor cl, cl
bts rax, 117
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
or di, 0b1000000000000000 # instrumentation
bsf si, di
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
and al, -56
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
xor ax, 24729
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and bl, 5
cmp cl, bl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -65
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdi]
cmovnz eax, edi
cmovp rbx, rdi
test eax, 758789512
mov bx, 71
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 40
mov rcx, 26
cmovns dx, di
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
sub dl, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
inc edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
