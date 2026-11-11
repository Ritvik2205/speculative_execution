.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, dl
add dl, 92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 99
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 81
sub cl, 16
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and ax, -21522
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
cwde
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor dl, 70
add dl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
not rsi
add bl, 7 # instrumentation
cmovnl ecx, esi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 29
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], si
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
