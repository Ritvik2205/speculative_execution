.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, sil
lea ax, qword ptr [rdi + rax]
lea ecx, qword ptr [rax + rbx + 27]
and al, -111
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 89
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
btc si, di
test ecx, 43
lea rax, qword ptr [rsi + rdi]
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
imul rcx, rcx, 66
add si, bx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
add al, -67 # instrumentation
setz dl
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
