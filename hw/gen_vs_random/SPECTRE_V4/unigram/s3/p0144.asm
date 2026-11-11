.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
xchg edx, eax
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx], 17
cmovnl eax, esi
dec bl
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rcx
or dl, -26
add dl, -25 # instrumentation
cmovs rsi, rdi
and rsi, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rsi]
and dl, al
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
xchg al, bl
mul ax
imul edx
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
imul rdi, rdi
bt esi, eax
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], cx
mov si, -8007
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdi]
cmp al, -116
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
dec rdi
cmovnbe ecx, ecx
imul dl
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
cmovl eax, ecx
cmp al, 98
add bl, bl
add dil, dil
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 24
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
or edx, -118
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
movsx dx, dl
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 40
test rcx, rbx
cmovs rax, rbx
add dil, -97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
inc rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
