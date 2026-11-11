.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 95 # instrumentation
mov al, bl
mul ax
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
not al
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
xor al, 14
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 95
test al, bl
inc si
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
mov rsi, 66
cmovo esi, edi
mov bl, sil
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
add dl, 31 # instrumentation
cmovnl bx, bx
add sil, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
