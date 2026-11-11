.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dx, 49
cmp sil, 88
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
cmovnbe rdx, rdi
xor al, 59
cmovns ax, ax
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
dec di
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], edx
movzx edi, cl
and rbx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rbx]
cmovo ecx, eax
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
xor bl, 93
and rdx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rdx]
add bl, bl
mul esi
cmovnbe rcx, rbx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
or sil, 65
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 69
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
add rsi, 47
mul edx
adc ebx, 117
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 79
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 50
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rsi]
cmovz ax, ax
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
xor sil, 56
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
cmovnl rbx, rsi
movzx rbx, si
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
test rcx, -2118888343
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
xor rdx, rcx
xchg dx, bx
cmp si, 73
or al, bl
sbb si, 8
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
