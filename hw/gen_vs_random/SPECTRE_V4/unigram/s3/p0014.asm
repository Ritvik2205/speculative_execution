.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr eax, edx
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
test ecx, -304234347
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
cmovns bx, ax
add cl, -9
cmovo edx, eax
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
adc dl, cl
and rsi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edi
bt cx, dx
cmp dil, -29
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
or ecx, 17
cmp sil, -100
and esi, 126
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
add al, -99 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
cmovnl dx, cx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
btr edx, 160
and rsi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rsi]
adc sil, 77
and rdi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdi]
inc rbx
add rcx, rax
imul ecx, edi
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
or ax, 27604
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], ax
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
xor bx, cx
and rdi, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 89
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
