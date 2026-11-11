.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 110
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rsi
movsx ax, bl
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdx
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 91
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], edx
neg edi
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
and rsi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rsi]
adc al, bl
imul cx, di
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
add sil, 3
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 34
inc dl
mov dl, 81
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
xor bx, -65
test cx, 7280
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], -39
cmovnb rax, rbx
add dil, -61
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ebx
and al, 41
test rsi, 26
and rax, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
sub edx, -122
btc rax, 124
or rcx, 60
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
sub dil, sil
sbb eax, -141178938
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
cmp dx, 13
mov dil, 20
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rcx]
cmovle edx, esi
sbb bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
