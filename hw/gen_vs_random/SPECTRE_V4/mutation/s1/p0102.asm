.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -26182
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
btr ecx, esi
btr dx, 245
and eax, -784085938
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
xchg sil, dl
dec sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -103
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
cmovo ax, bx
cmovo rax, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
and rax, -779592432
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
cmp dx, -26
and al, -1
imul bl
bt dx, 81
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -125
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
cmovb rsi, rsi
movsx ecx, bl
dec al
dec edx
xor bl, cl
xchg bl, al
xor dl, al
mul sil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
add cl, -65 # instrumentation
adc al, cl
add si, ax
sub cl, cl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
xor al, -40
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rbx, rax
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
add dl, bl
add ecx, esi
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
