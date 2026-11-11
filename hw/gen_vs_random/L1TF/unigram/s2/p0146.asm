.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -74 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
mov rax, -6437636498926413678
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
add al, 64 # instrumentation
cmovnl rdi, rbx
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sbb bl, sil
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], di
movzx rdi, bl
cmovnbe dx, dx
bts ecx, eax
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
cmp al, al
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
