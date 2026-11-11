.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdx], dx
cmp ebx, ebx
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edi
movsx eax, cl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 44
setb al
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add dl, 70 # instrumentation
sbb al, -81
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
sub rax, rdi
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
sbb rax, 803312930
cmp ax, -4865
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], eax
and dx, cx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 53
sbb rax, 803312930
xor dl, cl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and rdi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdi]
sbb di, 80
mov ecx, -1856082135
or bl, -5
cmovbe rbx, rdx
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 104
imul rcx
lea rcx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
