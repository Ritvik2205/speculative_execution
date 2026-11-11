.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
or al, dil
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
btc bx, cx
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
sbb bl, dl
sub al, 63
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
bswap rax
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
