.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 25
sub al, 28
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 103
add bx, 85
jmp .bb_0.1
.bb_0.1:
mov rax, -6437636498926413678
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
xor bl, dl
sbb bl, -94
btc di, 237
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 97
bts eax, edi
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 3
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
jmp .bb_0.2
.bb_0.2:
add dl, 109 # instrumentation
sbb bl, 120
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], esi
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -24
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
lea ax, qword ptr [rsi]
cmp sil, -110
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rbx], si
lea edx, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 77
lea dx, qword ptr [rbx + rdx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
not eax
lea rdx, qword ptr [rdi + rbx + 6421]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
