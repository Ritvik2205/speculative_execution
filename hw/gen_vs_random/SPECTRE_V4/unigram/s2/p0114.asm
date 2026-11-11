.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], bx
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 1
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
add dl, -114 # instrumentation
cmovl bx, cx
add bx, 110
movzx cx, dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 9
sub al, 99
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], di
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
imul dx, ax, 21
test ax, -5170
sbb cl, 20
add rax, rcx
cmovnb bx, bx
inc eax
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], bx
and al, sil
cmp edi, -104
and rdi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdi]
bts ebx, eax
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
test rax, -331426050
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], cx
and rdi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdi]
or edi, 51
adc cl, sil
cmovnbe rdi, rdi
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 71
add sil, dl
cmovns rdx, rbx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
movsx esi, bx
add ecx, 4
and sil, dl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 46
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 40
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
cmovp ax, bx
and rdi, -2
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 79
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
