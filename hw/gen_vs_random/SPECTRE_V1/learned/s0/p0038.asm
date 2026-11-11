.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and bl, -66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
mov cl, -98
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
cmp al, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
cmp al, dl
and bx, cx
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
bt rax, rsi
or al, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
