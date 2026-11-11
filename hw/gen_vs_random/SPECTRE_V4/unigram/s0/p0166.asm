.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -50
and al, -127
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
cmovnb dx, dx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], bx
cmovb dx, dx
add bl, 65 # instrumentation
cmovnp bx, ax
bts esi, eax
or al, 109
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
or dl, sil
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
movzx eax, dl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 54
cmovb ebx, esi
mul cl
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
cmovnp rbx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
cmovnp rax, rax
or eax, 1802312508
btc ax, si
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
sub cl, 116
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and dil, bl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
neg bl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
adc dl, dl
cmp rsi, 71
cmovnp edi, edi
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
add ecx, 83
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 94
inc al
imul ecx, esi
and rdi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
add al, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
