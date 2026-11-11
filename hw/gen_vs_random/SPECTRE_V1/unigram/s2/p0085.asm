.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -125 # instrumentation
cmovb edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 66
cmovnb ax, cx
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
lea edi, qword ptr [rbx + rdi + 43315]
cmp dx, 36
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and sil, al
cmp edx, 14
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 96
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
sub rax, 1451608022
movsx ax, dl
setb sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
