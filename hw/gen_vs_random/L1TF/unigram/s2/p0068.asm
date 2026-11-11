.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdi]
btr bx, di
or sil, sil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rcx]
setnb sil
cmovno ax, ax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
mov cl, 32
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 72
or rax, 1447934463
not edx
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rsi
add sil, 84 # instrumentation
btc si, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 41
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
