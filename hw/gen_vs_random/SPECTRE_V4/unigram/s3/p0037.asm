.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 87
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
sbb rcx, rsi
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], di
inc rcx
cmovnp si, dx
add dl, -99 # instrumentation
not edx
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb si, dx
sbb cl, 20
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
mov rcx, 5862286138240743445
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 78
cmovz eax, eax
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 71
mov rbx, 9101099553822202722
cmp bl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
add dl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
mov dil, -118
adc edx, 68
mov ebx, 87
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 19
cmovz bx, bx
sbb rbx, 96
mov dl, dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
add bl, bl
cmovz eax, edi
adc ecx, -12
not rax
sbb sil, bl
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
add sil, al
add dl, dl
cmovnp ax, ax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
