.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 1802312508
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
btr di, 18
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
cmp edi, edx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
mov edx, ebx
neg al
add bl, al
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
cmovle di, di
adc bx, -89
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
cmovle edx, edi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 68
sub dl, al
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
sbb bl, bl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
adc bx, -89
or dl, al
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 30
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
sbb bl, -94
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
cmovnl rcx, rsi
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
sub rsi, 26
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovb rdx, rdi
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
sub al, 119
cmp al, -23
xor esi, edx
xor eax, -164167056
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
