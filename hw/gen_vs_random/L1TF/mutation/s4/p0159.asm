.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], eax
and dx, cx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 53
sbb rax, 62
xor dl, cl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and rdi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdi]
sbb di, 80
mov ecx, -1856082135
or bl, 114
cmovbe rbx, rdx
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 104
imul rcx
lea rcx, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
add al, -40 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
movsx ax, cl
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
add eax, -1
lea si, qword ptr [rbx + rsi + 54]
lea bx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
