.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 10655
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 31
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
cmovo ax, ax
sub eax, 1050143384
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
cmp rdx, rcx
cmovnbe rbx, rsi
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
add cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
add al, -99
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
bt bx, di
or esi, 32
and eax, -2040347881
imul edx, ebx, 1
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 4
movsx ebx, dx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
xchg ebx, esi
test cl, -10
test bx, 24072
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
cmovbe rax, rdi
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -108
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
cmp rbx, rsi
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
adc cl, 31
add al, -99
xor rdx, rcx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -41
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
