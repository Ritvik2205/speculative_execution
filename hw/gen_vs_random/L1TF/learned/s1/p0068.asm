.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
cmovl bx, si
dec di
mov edx, eax
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 40
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
jmp .bb_0.1
.bb_0.1:
add sil, 18
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 77
jmp .bb_0.2
.bb_0.2:
xor al, cl
sbb bl, al
xor edi, 48
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
cmovo ebx, edi
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
cmovo rdx, rbx
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
add bl, bl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
