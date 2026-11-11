.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
add eax, -1265007362
setno bl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
btr cx, dx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rdx + rdx + 59]
mov bl, dl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add bl, sil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 86
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
or cl, 97
mov si, di
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
