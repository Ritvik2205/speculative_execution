.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], -784964246
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx], 4
setb al
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
bts dx, 70
cmp al, bl
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 52
add cl, 123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
bt rsi, rdx
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
