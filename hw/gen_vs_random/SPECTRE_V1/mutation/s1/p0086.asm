.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -97 # instrumentation
sets cl
or rsi, -119
sbb eax, -108
cmovs ebx, esi
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 71
sub dl, bl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -119
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -97
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
mul al
add al, 10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
test rsi, rax
imul rax, rdi, 109
add bl, -118 # instrumentation
cmovp si, si
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -93
mov al, dl
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -88
test dx, si
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
cmovno si, ax
movsx rcx, si
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rsi], si
lea rcx, qword ptr [rdi + rax]
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
