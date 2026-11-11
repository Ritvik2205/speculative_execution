.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, 48
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
add cx, 11
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
cmovnl rax, rbx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
cmovle edx, ebx
and rdi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
cmovo rsi, rbx
cmovnb ebx, ecx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
adc ecx, -12
test al, 66
inc rdi
add rsi, rdx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], ax
xor ax, si
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
not ax
or al, 95
add bx, 110
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
or bl, 28
cmovnz dx, cx
and sil, -49
xor ebx, 57
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
xor bl, cl
movzx ax, al
cmovb edi, edx
cmovnb bx, bx
cmovo rcx, rcx
sub rdx, 22
and rcx, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rcx]
add bx, 110
sub al, al
xor ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
