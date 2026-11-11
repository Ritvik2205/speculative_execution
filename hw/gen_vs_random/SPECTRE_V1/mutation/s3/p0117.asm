.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
setbe al
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
bt rbx, 244
lea rbx, qword ptr [rbx + rdi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
imul edx, ebx
test sil, 47
setle dl
and dl, dl
and rdi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 11
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 127
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
or ax, 18658
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
xor rax, 376589024
mul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
