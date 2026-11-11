.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
setbe al
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -25
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
mov al, al
cmp sil, dl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, cl
sub ecx, 34
cmovno eax, ebx
mov al, dil
lea edi, qword ptr [rcx]
lea cx, qword ptr [rdx + rsi + 29]
or dl, dil
add cl, 29 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 44
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], -42
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
