.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ecx
btc ax, 5
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 50
add al, -7 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
adc dil, -48
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
not rbx
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
mul dx
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
mov bx, ax
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 80
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 16
test bl, bl
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi]
cmp bl, sil
mul eax
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
dec sil
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
adc ecx, 55
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
cmovnl bx, si
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
add bl, -49
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
and cl, al
cmovnp ax, bx
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
sub rbx, 101
btc rdx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
cmp cl, cl
test al, 18
movzx eax, bl
sub al, bl
and rdx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdx]
or dl, 71
add al, -4
cmovle ax, ax
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
